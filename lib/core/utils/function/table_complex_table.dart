import 'package:flutter/material.dart';
import 'package:horizon/core/utils/function/data_cell_text.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

import '../../models/svg_model.dart';

DataRow tableComplexTable(
    BuildContext context, List<dynamic> tablesBody, int index) {
  return DataRow(cells: [
    dataCellText(
        context: context,
        text: tablesBody[index].title,
        value: tablesBody[index].value,
        length: tablesBody.length,
        textStatus: tablesBody[index].textStatus),
    DataCell(Row(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: CircleAvatar(
              radius: MediaQuery.sizeOf(context).width > 1600 ? 12 : 10,
              backgroundColor: tablesBody[index].colorStatus!,
              child: Icon(tablesBody[index].iconStatus!,
                  size: MediaQuery.sizeOf(context).width < 800 ? 16 : 14,
                  color: Colors.white)),
        ),
        const SizedBox(width: 8),
        Text(tablesBody[index].textStatus!,
            style: MediaQuery.sizeOf(context).width < 800
                ? Styles.bold20(context).copyWith(fontSize: 22)
                : Styles.bold14(context))
      ],
    )),
    dataCellText(context: context, text: tablesBody[index].dateTime),
    DataCell(CustomSvgPicture(
        svg: SvgModel(image: tablesBody[index].complexProgress!))),
  ]);
}
