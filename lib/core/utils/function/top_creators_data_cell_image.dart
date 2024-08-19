import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

DataCell topCreatorsDataCellImage(
    {required BuildContext context,
    required String text,
    required String image}) {
  return DataCell(Row(
    children: [
      Image.asset(image),
      const SizedBox(width: 8),
      Text(text, style: Styles.bold14(context)),
    ],
  ));
}
