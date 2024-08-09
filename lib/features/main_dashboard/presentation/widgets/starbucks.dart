import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

class Starbucks extends StatelessWidget {
  const Starbucks({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        right: 24,
        left: 24,
        top: 24,
        bottom: 24,
        height: 345,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Assets.imagesStarbucksBackground),
            const Spacer(),
            Text('Starbucks', style: Styles.bold24(context)),
            const SizedBox(height: 8),
            FittedBox(
              child: Row(
                children: [
                  CustomSvgPicture(svg: SvgModel(image: Assets.imagesEat)),
                  Text('10% cashback & off',
                      style: Styles.medium16(context).copyWith(fontSize: 18))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
