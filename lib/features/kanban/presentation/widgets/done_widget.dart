import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/background_model.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../data/manager/kanban/kanban_cubit.dart';
import 'kanban_header.dart';
import 'kanban_list_view.dart';

class DoneWidget extends StatelessWidget {
  const DoneWidget({super.key, this.width});
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        right: 16,
        left: 16,
        top: 16,
        bottom: 0.0,
        height: MediaQuery.sizeOf(context).width < 1300 &&
                MediaQuery.sizeOf(context).width > 800
            ? 980
            : MediaQuery.sizeOf(context).width <= 1725 &&
                    MediaQuery.sizeOf(context).width >= 1600
                ? 900
                : (MediaQuery.sizeOf(context).width < 1600 &&
                            MediaQuery.sizeOf(context).width >= 1540) ||
                        (MediaQuery.sizeOf(context).width < 1420 &&
                            MediaQuery.sizeOf(context).width >= 1380)
                    ? 880
                    : (MediaQuery.sizeOf(context).width < 1540 &&
                                MediaQuery.sizeOf(context).width >= 1420) ||
                            (MediaQuery.sizeOf(context).width < 1380 &&
                                MediaQuery.sizeOf(context).width >= 1300)
                        ? 860
                        : 940,
        width: width,
        child: SingleChildScrollView(
          physics: MediaQuery.sizeOf(context).width > 800
              ? const BouncingScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const KanbanHeader(text: 'Done'),
              const SizedBox(height: 24),
              KanbanListView(items: context.read<KanbanCubit>().doneList),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
