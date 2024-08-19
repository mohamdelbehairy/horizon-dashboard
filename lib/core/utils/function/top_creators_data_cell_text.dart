import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

DataCell topCreatorsDataCellText(
    {required BuildContext context, required String text}) {
  return DataCell(Text(text,
      style: MediaQuery.sizeOf(context).width > 800
          ? Styles.medium14(context)
          : Styles.medium14(context).copyWith(fontSize: 20)));
}
