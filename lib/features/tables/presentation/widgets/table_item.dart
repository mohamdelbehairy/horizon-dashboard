import 'package:flutter/material.dart';
import '../../../../core/utils/function/data_table_body.dart';
import '../../../../core/utils/function/data_tables_title.dart';

class TableItem extends StatelessWidget {
  const TableItem({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: DataTable(
          showCheckboxColumn: false,
          horizontalMargin: 0.0,
          columnSpacing: 130,
          sortAscending: false,
          columns: dataTablesTitle(context),
          rows: dataTablesBody(context)),
    );
  }
}
