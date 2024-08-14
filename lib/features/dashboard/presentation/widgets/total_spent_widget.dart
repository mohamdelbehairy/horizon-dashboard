import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

class TotalSpentWidget extends StatelessWidget {
  const TotalSpentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
        backgroundModel: BackgroundModel(
            right: 0,
            left: 0,
            top: 0.0,
            bottom: 0.0,
            width: double.infinity,
            height: MediaQuery.sizeOf(context).width < 800
                ? 150
                : MediaQuery.sizeOf(context).width > 1635
                    ? 350
                    : 300,
            child: CustomSvgPicture(
                svg: SvgModel(image: Assets.imagesTotalSpent))));
  }
}
