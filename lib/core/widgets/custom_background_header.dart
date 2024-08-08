import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_header_model.dart';
import 'package:horizon/core/utils/styles.dart';

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
        Container(
          height: 37,
          width: 37,
          decoration: BoxDecoration(
              color: const Color(0xffF4F7FE),
              borderRadius: BorderRadius.circular(10)),
          child: backgroundHeaderModel.child,
        )
      ],
    );
  }
}
