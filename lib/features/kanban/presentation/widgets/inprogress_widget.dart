import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import '../../data/manager/kanban/kanban_cubit.dart';
import 'kanban_header.dart';
import 'kanban_list_view.dart';

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        right: 16,
        left: 16,
        top: 16,
        bottom: 0.0,
        height: MediaQuery.sizeOf(context).width < 1300 &&
                MediaQuery.sizeOf(context).width > 1024
            ? 980
            : (MediaQuery.sizeOf(context).width <= 1725 &&
                        MediaQuery.sizeOf(context).width >= 1600) ||
                    MediaQuery.sizeOf(context).width == 428 ||
                    (MediaQuery.sizeOf(context).width <= 1024 &&
                        MediaQuery.sizeOf(context).width >= 800)
                ? 900
                : (MediaQuery.sizeOf(context).width < 1600 &&
                            MediaQuery.sizeOf(context).width >= 1540) ||
                        (MediaQuery.sizeOf(context).width < 1420 &&
                            MediaQuery.sizeOf(context).width >= 1380) ||
                        MediaQuery.sizeOf(context).width == 390 ||
                        (MediaQuery.sizeOf(context).width >= 410 &&
                            MediaQuery.sizeOf(context).width < 480 &&
                            MediaQuery.sizeOf(context).width != 428)
                    ? 880
                    : (MediaQuery.sizeOf(context).width < 1540 &&
                                MediaQuery.sizeOf(context).width >= 1420) ||
                            (MediaQuery.sizeOf(context).width < 1380 &&
                                MediaQuery.sizeOf(context).width >= 1300)
                        ? 860
                        : MediaQuery.sizeOf(context).width < 390
                            ? 855
                            : 940,
        child: SingleChildScrollView(
          physics: MediaQuery.sizeOf(context).width > 800
              ? const BouncingScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const KanbanHeader(text: 'In progress'),
              const SizedBox(height: 24),
              KanbanListView(items: context.read<KanbanCubit>().inProgressList),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
