import 'package:flutter/material.dart';
import '../widgets/login_view_first_part.dart';
import '../widgets/login_view_stack.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Row(
              children: [
                SizedBox(width: 308),
                Expanded(child: LoginViewFirstPart()),
                LoginViewStack(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
