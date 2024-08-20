import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_select_item.dart';

DataCell dataCellText(
    {required BuildContext context,
    required String text,
    String? value,
    int? length,
    String? textStatus}) {
  return DataCell(Row(
    children: [
      if (value != null && length != null && length > 5)
        const CustomSelectItem(),
      if (value != null && length != null && length > 5)
        const SizedBox(width: 12),
      Text(text,
          style: MediaQuery.sizeOf(context).width < 800
              ? Styles.bold20(context).copyWith(fontSize: 28)
              : textStatus != null
                  ? Styles.bold16(context)
                  : Styles.bold14(context)),
    ],
  ));
}
