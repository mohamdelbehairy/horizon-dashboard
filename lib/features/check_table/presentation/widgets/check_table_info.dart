import 'package:flutter/material.dart';
import 'package:horizon/features/check_table/data/models/check_table_model.dart';

import 'check_table_list_view.dart';
import 'check_table_name.dart';

class CheckTableInfo extends StatelessWidget {
  const CheckTableInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CheckTableName(),
        CheckTableListView(
            checkTableModel: CheckTableModel(title: 'PROGRESS', number: 2)),
        CheckTableListView(
            checkTableModel: CheckTableModel(title: 'QUANTITY', number: 3)),
        CheckTableListView(
            checkTableModel: CheckTableModel(title: 'DATE', number: 4)),
      ],
    );
  }
}

