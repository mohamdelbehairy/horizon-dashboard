import 'package:flutter/material.dart';

import '../../../../core/models/svg_model.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_svg_picture.dart';

class LoginViewChangeThemWidget extends StatelessWidget {
  const LoginViewChangeThemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff868CFF),
                Color(0xff4318FF),
              ])),
      child: CustomSvgPicture(
          svg: SvgModel(
              image: Assets.imagesDarkMode,
              color: Colors.white,
              fit: BoxFit.scaleDown)),
    );
  }
}
