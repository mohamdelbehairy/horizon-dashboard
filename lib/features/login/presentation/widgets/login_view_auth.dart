import 'package:flutter/material.dart';
import 'package:horizon/core/models/button_model.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_button.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

import 'keep_me_login_widget.dart';
import 'login_view_text_field.dart';
import 'sign_in_with_google.dart';

class LoginViewAuth extends StatelessWidget {
  const LoginViewAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sign In', style: Styles.bold34(context)),
        Text('Enter your email and password to sign in!',
            style: Styles.regular12(context).copyWith(fontSize: 16)),
        const SizedBox(height: 24),
        const SignInWithGoogleWidget(),
        const SizedBox(height: 24),
        SizedBox(
            width: MediaQuery.sizeOf(context).width < 800
                ? MediaQuery.sizeOf(context).width - 32
                : null,
            child: CustomSvgPicture(
                svg: SvgModel(image: Assets.imagesOr, fit: BoxFit.scaleDown))),
        const SizedBox(height: 24),
        const LoginViewTextField(title: 'Email', hintText: 'mail@simmmple.com'),
        const SizedBox(height: 24),
        const LoginViewTextField(
            title: 'Password', hintText: 'Min. 8 characters'),
        const SizedBox(height: 28),
        const KeepMeLogingWidget(),
        const SizedBox(height: 28),
        CustomButton(
            buttonModel: ButtonModel(
                buttonName: 'Sign In',
                width: MediaQuery.sizeOf(context).width < 800
                    ? MediaQuery.sizeOf(context).width - 32
                    : 410,
                height: 60)),
        const SizedBox(height: 28),
        Row(
          children: [
            Text('Not registered yet?',
                style: Styles.regular14(context)
                    .copyWith(color: const Color(0xff2B3674))),
            Text('Create an Account',
                style: Styles.bold14(context)
                    .copyWith(color: const Color(0xff4318FF))),
          ],
        )
      ],
    );
  }
}
