import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../data/models/check_table_model.dart';

class CheckTableListView extends StatelessWidget {
  const CheckTableListView({super.key, required this.checkTableModel});
  final CheckTableModel checkTableModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(checkTableModel.title, style: Styles.medium14(context)),
        const SizedBox(height: 24),
        Column(
          children: List.generate(checkTableModel.items2.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                      checkTableModel.number == 2
                          ? checkTableModel.items2[index]
                          : checkTableModel.number == 3
                              ? checkTableModel.items3[index]
                              : checkTableModel.items4[index],
                      style: Styles.bold14(context))),
            );
          }),
        )
      ],
    );
  }
}

