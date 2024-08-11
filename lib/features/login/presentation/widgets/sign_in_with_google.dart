import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

class SignInWithGoogleWidget extends StatelessWidget {
  const SignInWithGoogleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.sizeOf(context).width < 800
          ? MediaQuery.sizeOf(context).width - 32
          : 410,
      decoration: BoxDecoration(
          color: const Color(0xffF4F7FE),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomSvgPicture(svg: SvgModel(image: Assets.imagesGoogle)),
          const SizedBox(width: 8),
          Text('Sign in with Google',
              style: Styles.medium14(context)
                  .copyWith(color: const Color(0xff2B3674)))
        ],
      ),
    );
  }
}
