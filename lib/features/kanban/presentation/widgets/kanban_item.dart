import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/features/kanban/data/models/kanban_item_model.dart';
import 'kanban_footer_item.dart';
import 'kanban_item_title.dart';

class KanbanItem extends StatelessWidget {
  const KanbanItem({super.key, required this.kanbanItemModel});
  final KanbanItemModel kanbanItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 180,
      width: 466,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width < 800 ? 0.0 : 4),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 6,
                spreadRadius: 0.0,
                offset: const Offset(0.0, 4.0))
          ]),
      child: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.sizeOf(context).width < 800 ? 16 : 24,
            right: MediaQuery.sizeOf(context).width < 800 ? 16 : 24,
            top: MediaQuery.sizeOf(context).width < 800 ? 16 : 24,
            bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KanbanItemTitle(title: kanbanItemModel.title),
            if (kanbanItemModel.backgroundImage != null)
              const SizedBox(height: 16),
            if (kanbanItemModel.backgroundImage != null)
              Image.asset(kanbanItemModel.backgroundImage!),
            const SizedBox(height: 16),
            Text(kanbanItemModel.subTitle,
                style: Styles.regular12(context).copyWith(fontSize: 12)),
            const SizedBox(height: 24),
            KanbanFooterItem(kanbanItemModel: kanbanItemModel),
          ],
        ),
      ),
    );
  }
}
