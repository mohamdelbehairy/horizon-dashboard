import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_select_item.dart';

DataCell dataCellText(
    {required BuildContext context, required String text, String? value}) {
  return DataCell(Row(
    children: [
      if (value != null) const CustomSelectItem(),
      if (value != null) const SizedBox(width: 12),
      Text(text, style: Styles.bold14(context)),
    ],
  ));
}
