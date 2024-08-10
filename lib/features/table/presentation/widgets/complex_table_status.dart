import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../data/models/table_model.dart';

class ComplexTableStatus extends StatelessWidget {
  const ComplexTableStatus({super.key, required this.tableModel});
  final TableModel tableModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tableModel.title, style: Styles.medium14(context)),
        const SizedBox(height: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(tableModel.length, (index) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.sizeOf(context).width < 365 ? 26 : 25),
              child: Row(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: CircleAvatar(
                        radius:
                            MediaQuery.sizeOf(context).width > 1600 ? 12 : 10,
                        backgroundColor: tableModel.statusColor[index],
                        child: tableModel.statusIcon[index]),
                  ),
                  const SizedBox(width: 8),
                  Text(tableModel.statusText[index],
                      style: Styles.bold14(context))
                ],
              ),
            );
          }),
        )
      ],
    );
  }
}
