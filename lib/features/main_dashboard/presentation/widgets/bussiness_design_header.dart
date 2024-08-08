import 'package:flutter/material.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

import '../../../../core/models/svg_model.dart';

class BussinessDesignHeader extends StatelessWidget {
  const BussinessDesignHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: ListTile(
        minLeadingWidth: 0.0,
        minVerticalPadding: 0.0,
        contentPadding: EdgeInsets.zero,
        leading: Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
              color: const Color(0xffFEEFEE),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: CustomSvgPicture(
                svg: SvgModel(
                    image: Assets.imagesFires,
                    fit: BoxFit.scaleDown,
                    hight: 28)),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('Business Design',
                    style: Styles.bold12(context)
                        .copyWith(color: const Color(0xffA3AED0)))),
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('New lession is available',
                    style: Styles.bold16(context)))
          ],
        ),
      ),
    );
  }
}
