import 'package:flutter/material.dart';

import '../../../features/tables/data/models/tables_model.dart';
import 'table_complex_table.dart';
import 'table_default_table.dart';

List<DataRow> dataTablesBody(
    BuildContext context, List<TablesBodyModel> tablesBody) {
  return List.generate(tablesBody.length, (index) {
    if (tablesBody[index].iconStatus != null) {
      return tableComplexTable(context, tablesBody, index);
    }
    return tableDefaultTable(context, tablesBody, index);
  });
}
