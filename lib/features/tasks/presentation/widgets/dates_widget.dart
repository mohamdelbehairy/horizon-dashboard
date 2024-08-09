import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

class DatesWidget extends StatelessWidget {
  const DatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          left: 16,
          right: 16,
          height: MediaQuery.sizeOf(context).width > 1635 ? 350 : 330,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                        child: CustomSvgPicture(
                            svg: SvgModel(
                                image: Assets.imagesSelectDate,
                                fit: BoxFit.scaleDown))),
                    Flexible(
                      child: CustomSvgPicture(
                          svg: SvgModel(
                              image: Assets.imagesSelectYear,
                              fit: BoxFit.scaleDown)),
                    ),
                  ],
                ),
                // const SizedBox(height: 16),
                CustomSvgPicture(svg: SvgModel(image: Assets.imagesDates)),
              ],
            ),
          )),
    );
  }
}
