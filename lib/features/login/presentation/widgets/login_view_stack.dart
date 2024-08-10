import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import 'login_view_change_theme_widget.dart';
import 'login_view_footer.dart';

class LoginViewStack extends StatelessWidget {
  const LoginViewStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Image.asset(Assets.imagesLoginBackground, fit: BoxFit.scaleDown),
          const Positioned(
              bottom: 15, right: 30, child: LoginViewChangeThemWidget()),
          const Positioned(left: 150, bottom: 30, child: LoginViewFooter())
        ],
      ),
    );
  }
}
