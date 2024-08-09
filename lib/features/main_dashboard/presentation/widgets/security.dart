import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/core/widgets/custom_button.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

import '../../../../core/models/button_model.dart';

class Security extends StatelessWidget {
  const Security({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          height: 345,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSvgPicture(
                  svg: SvgModel(image: Assets.imagesFinger, hight: 100)),
              const SizedBox(height: 12),
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text('Control card security\nin-app with a tap',
                      style: Styles.bold24(context))),
              const SizedBox(height: 16),
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text('Discover our cards benefits, with one tap.',
                      style: Styles.medium14(context))),
              const Spacer(),
              Flexible(
                  child: CustomButton(
                      buttonModel: ButtonModel(
                          height: 60,
                          width: double.infinity,
                          buttonName: 'Cards'))),
              const SizedBox(height: 16),
            ],
          )),
    );
  }
}
