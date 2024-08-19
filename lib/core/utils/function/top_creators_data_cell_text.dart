import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

DataCell topCreatorsDataCellText(
    {required BuildContext context, required String text}) {
  return DataCell(Text(text, style: Styles.medium14(context)));
}
