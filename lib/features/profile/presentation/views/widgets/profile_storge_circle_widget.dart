import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

class ProfileStorgeCircleWidget extends StatelessWidget {
  const ProfileStorgeCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: const Color(0xffF4F7FE),
      child: CustomSvgPicture(
          svg: SvgModel(image: Assets.imagesStorege, fit: BoxFit.scaleDown)),
    );
  }
}
