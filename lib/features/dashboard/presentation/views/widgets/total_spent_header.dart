import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

class TotalSpentHeader extends StatelessWidget {
  const TotalSpentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 37,
          width: 123,
          decoration: BoxDecoration(
              color: const Color(0xffF4F7FE),
              borderRadius: BorderRadius.circular(7)),
          child: Row(
            children: [
              const SizedBox(width: 12),
              CustomSvgPicture(
                  svg: SvgModel(image: Assets.imagesCalendarToday)),
              const SizedBox(width: 4),
              Text('This month', style: Styles.medium14(context)),
            ],
          ),
        ),
        Container(
          height: 33,
          width: 33,
          decoration: BoxDecoration(
              color: const Color(0xffF4F7FE),
              borderRadius: BorderRadius.circular(10)),
          child: CustomSvgPicture(
              svg: SvgModel(
                  image: Assets.imagesTables, color: const Color(0xff4318FF))),
        )
      ],
    );
  }
}
