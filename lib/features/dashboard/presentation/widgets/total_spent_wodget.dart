import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';
import 'package:horizon/features/dashboard/presentation/widgets/totoal_spent_amount.dart';

import 'total_spent_header.dart';

class TotalSpentWidget extends StatelessWidget {
  const TotalSpentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TotalSpentHeader(),
          const SizedBox(height: 24),
          const TotalSpentAmout(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSvgPicture(svg: SvgModel(image: Assets.imagesDone)),
                  const SizedBox(width: 6),
                  Text('On track',
                      style: Styles.bold16(context)
                          .copyWith(color: const Color(0xff05CD99))),
                  // const SizedBox(width: 64),
                ],
              ),
              Positioned(
                  left: MediaQuery.sizeOf(context).width * .1,
                  top: -20,
                  child: CustomSvgPicture(
                      svg: SvgModel(
                          image: Assets.imagesLine1,
                          fit: BoxFit.scaleDown,
                          hight: 80))),
            ],
          ),
        ],
      )),
    );
  }
}
