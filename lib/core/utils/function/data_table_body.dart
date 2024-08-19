import 'package:flutter/material.dart';

import 'table_complex_table.dart';
import 'table_default_table.dart';
import 'top_creators_data_cell.dart';

List<DataRow> dataTablesBody(BuildContext context, List<dynamic> tablesBody) {
  return List.generate(tablesBody.length, (index) {
    if (tablesBody.length == 8) {
      return topCreatorsDataCell(context, tablesBody, index);
    }
    if (tablesBody[index].iconStatus != null) {
      return tableComplexTable(context, tablesBody, index);
    }
    return tableDefaultTable(context, tablesBody, index);
  });
}
