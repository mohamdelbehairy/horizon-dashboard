import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

DataCell dataCellText(BuildContext context, String text) {
  return DataCell(Text(text, style: Styles.bold14(context)));
}
