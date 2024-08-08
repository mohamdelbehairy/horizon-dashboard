import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_header_model.dart';
import 'package:horizon/core/utils/styles.dart';

import 'header_right_item.dart';

class CustomBackgroundHeader extends StatelessWidget {
  const CustomBackgroundHeader(
      {super.key, required this.backgroundHeaderModel});
  final BackgroundHeaderModel backgroundHeaderModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(backgroundHeaderModel.title, style: Styles.bold24(context)),
        HeaderRightItem(child: backgroundHeaderModel.child)
      ],
    );
  }
}


