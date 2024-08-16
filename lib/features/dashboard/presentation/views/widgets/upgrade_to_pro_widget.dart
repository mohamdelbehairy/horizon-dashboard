import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:horizon/core/utils/assets.dart';

import 'upgrade_to_pro_item.dart';

class UpgradeToProWidget extends StatelessWidget {
  const UpgradeToProWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const UpgradeToProItem(),
        const Positioned(
            right: 0.0,
            left: 0.0,
            top: -40,
            child: CircleAvatar(radius: 40, backgroundColor: Colors.white)),
        Positioned(
          right: 0.0,
          left: 0.0,
          top: -35,
          child: CircleAvatar(
            radius: 35,
            backgroundColor: const Color(0xff4318FF),
            child: SvgPicture.asset(Assets.imagesUpgradeToPro),
          ),
        ),
      ],
    );
  }
}
