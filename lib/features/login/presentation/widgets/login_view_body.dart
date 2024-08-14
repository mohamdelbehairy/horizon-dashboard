import 'package:flutter/material.dart';

import 'back_to_dashboard_widget.dart';
import 'copy_right_widget.dart';
import 'login_view_auth.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width < 800 ? 16 : 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 35),
          const BackToDashboardWidget(),
          // SizedBox(height: 80),
          const Spacer(),
          const LoginViewAuth(),
          const SizedBox(height: 16),
          const Spacer(),
          if (MediaQuery.sizeOf(context).width < 800)
            SizedBox(
                width: MediaQuery.sizeOf(context).width - 32,
                child: const MobileCopyRightWidget()),
          if (MediaQuery.sizeOf(context).width >= 800)
            const DesktopOrTabletCopyRightWidget(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
