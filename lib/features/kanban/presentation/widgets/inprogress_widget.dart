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
     height: MediaQuery.sizeOf(context).width <= 1500 ? 870 : 920,
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisSize: MainAxisSize.min,
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