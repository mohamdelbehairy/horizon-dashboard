import 'package:flutter/material.dart';

import 'data_cell_image.dart';
import 'data_cell_text.dart';

DataRow tableDefaultTable(
    BuildContext context, List<dynamic> tablesBody, int index) {
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
}
