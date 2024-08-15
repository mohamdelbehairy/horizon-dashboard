import 'package:flutter/material.dart';

import '../../data/models/kanban_item_model.dart';
import 'kanban_button.dart';

class KanbanFooterItem extends StatelessWidget {
  const KanbanFooterItem({super.key, required this.kanbanItemModel});
  final KanbanItemModel kanbanItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(kanbanItemModel.footerImage),
        KanbanButton(kanbanItemModel: kanbanItemModel),
      ],
    );
  }
}
