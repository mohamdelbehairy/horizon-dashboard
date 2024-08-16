import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

import '../../../features/tables/data/models/tables_model.dart';

DataCell dateCellImage(TablesBodyModel tablesBodyModel) {
  return DataCell(Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomSvgPicture(svg: SvgModel(image: tablesBodyModel.image1, hight: 22)),
      const SizedBox(width: 16),
      if (tablesBodyModel.image2 != null)
        CustomSvgPicture(
            svg: SvgModel(image: tablesBodyModel.image2!, hight: 22)),
      const SizedBox(width: 16),
      if (tablesBodyModel.image3 != null)
        CustomSvgPicture(
            svg: SvgModel(image: tablesBodyModel.image3!, hight: 22)),
    ],
  ));
}
