import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../widgets/custom_svg_picture.dart';

List<DataColumn> dataTablesTitle(
    BuildContext context, List<dynamic> tablesTitle) {
  return List.generate(tablesTitle.length, (index) {
    return DataColumn(
        label: tablesTitle.length == 3
            ? Text(tablesTitle[index],
                style: MediaQuery.sizeOf(context).width > 800
                    ? Styles.medium14(context)
                    : Styles.medium14(context).copyWith(fontSize: 20))
            : CustomSvgPicture(
                svg: SvgModel(
                    image: Assets.imagesTablesTitle,
                    hight:
                        MediaQuery.sizeOf(context).width < 800 ? 50 : null)));
  });
}
