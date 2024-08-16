import 'package:flutter/material.dart';
import 'package:horizon/core/utils/assets.dart';

class ProfileImageStack extends StatelessWidget {
  const ProfileImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(Assets.imagesProfileBackground),
        Positioned(
            right: 0.0,
            left: 0.0,
            bottom: -32,
            child: CircleAvatar(
                radius: 32,
                backgroundColor: Colors.white,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child:
                        Image.asset(Assets.imagesProfileAvatar, height: 55))))
      ],
    );
  }
}
