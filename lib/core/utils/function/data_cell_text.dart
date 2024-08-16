import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_select_item.dart';

DataCell dataCellText(
    {required BuildContext context,
    required String text,
    String? value,
    int? length}) {
  return DataCell(Row(
    children: [
      if (value != null && length != null && length > 5)
        const CustomSelectItem(),
      if (value != null && length != null && length > 5)
        const SizedBox(width: 12),
      Text(text, style: Styles.bold14(context)),
    ],
  ));
}
