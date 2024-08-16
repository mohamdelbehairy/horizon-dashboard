import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/features/kanban/presentation/manager/kanban/kanban_cubit.dart';
import 'package:horizon/features/kanban/data/models/kanban_item_model.dart';

import 'kanban_item.dart';

class KanbanListView extends StatelessWidget {
  const KanbanListView({super.key, required this.items});
  final List<KanbanItemModel> items;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KanbanCubit, KanbanState>(
      builder: (context, state) {
        return Column(
          children: List.generate(items.length, (index) {
            return Padding(
                padding: EdgeInsets.only(bottom: index == 2 ? 0 : 16),
                child: KanbanItem(kanbanItemModel: items[index]));
          }),
        );
      },
    );
  }
}
