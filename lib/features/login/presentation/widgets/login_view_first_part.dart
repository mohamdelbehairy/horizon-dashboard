import 'package:flutter/material.dart';

import 'back_to_dashboard_widget.dart';
import 'login_view_auth.dart';

class LoginViewFirstPart extends StatelessWidget {
  const LoginViewFirstPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 35),
        BackToDashboardWidget(),
        SizedBox(height: 230),
        LoginViewAuth()
      ],
    );
  }
}
