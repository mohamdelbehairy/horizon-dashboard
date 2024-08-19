import 'package:flutter/material.dart';
import '../../../../core/utils/function/data_table_body.dart';
import '../../../../core/utils/function/data_tables_title.dart';

class TableItem extends StatelessWidget {
  const TableItem(
      {super.key, required this.tablesBody, required this.tablesTitle});
  final List<dynamic> tablesTitle, tablesBody;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: DataTable(
          showCheckboxColumn: false,
          horizontalMargin: 0.0,
          columnSpacing: MediaQuery.sizeOf(context).width <= 1150
              ? 220
              : tablesBody.length == 8
                  ? 100
                  : 130,
          sortAscending: false,
          columns: dataTablesTitle(context, tablesTitle),
          rows: dataTablesBody(context, tablesBody)),
    );
  }
}
