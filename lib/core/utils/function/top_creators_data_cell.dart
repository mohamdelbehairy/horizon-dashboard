import 'package:flutter/material.dart';

import 'top_creators_data_cell_text.dart';
import 'top_creators_data_cell_image.dart';

DataRow topCreatorsDataCell(
    BuildContext context, List<dynamic> tablesBody, int index) {
  return DataRow(cells: [
    topCreatorsDataCellImage(
        context: context,
        text: tablesBody[index].name,
        image: tablesBody[index].image),
    topCreatorsDataCellText(context: context, text: tablesBody[index].artwork),
    topCreatorsDataCellText(context: context, text: tablesBody[index].rating),
  ]);
}
