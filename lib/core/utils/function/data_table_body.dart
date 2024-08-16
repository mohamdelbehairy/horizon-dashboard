import 'package:flutter/material.dart';

import '../../../features/tables/data/models/tables_model.dart';
import 'data_cell_image.dart';
import 'data_cell_text.dart';

List<DataRow> dataTablesBody(
    BuildContext context, List<TablesBodyModel> tablesBody) {
  return List.generate(tablesBody.length, (index) {
    return DataRow(cells: [
      dataCellText(
          context: context,
          text: tablesBody[index].title,
          value: tablesBody[index].value,
          length: tablesBody.length),
      if (tablesBody[index].image1 != null) dateCellImage(tablesBody[index]),
      if (tablesBody[index].image1 != null)
        dataCellText(context: context, text: tablesBody[index].dateTime),
      dataCellText(context: context, text: tablesBody[index].persentage!),
      if (tablesBody[index].value != null)
        dataCellText(context: context, text: tablesBody[index].value!),
      if (tablesBody[index].value != null)
        dataCellText(context: context, text: tablesBody[index].dateTime),
    ]);
  });
}
