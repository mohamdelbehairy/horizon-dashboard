import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../../data/models/kanban_item_model.dart';

class KanbanButton extends StatelessWidget {
  const KanbanButton({super.key, required this.kanbanItemModel});
  final KanbanItemModel kanbanItemModel;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 34,
        minWidth: 94,
        color: kanbanItemModel.color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {},
        child: Text(kanbanItemModel.buttonName, style: Styles.bold10(context)));
  }
}
