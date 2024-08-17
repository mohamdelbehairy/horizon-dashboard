import 'package:flutter/material.dart';
import 'package:horizon/features/tables/data/models/tables_model.dart';
import '../../../../../core/utils/function/data_table_body.dart';
import '../../../../../core/utils/function/data_tables_title.dart';

class TableItem extends StatelessWidget {
  const TableItem({super.key, required this.tablesBody});
  final List<TablesBodyModel> tablesBody;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: DataTable(
          showCheckboxColumn: false,
          horizontalMargin: 0.0,
          columnSpacing: 130,
          sortAscending: false,
          columns: dataTablesTitle(context),
          rows: dataTablesBody(context, tablesBody)),
    );
  }
}
