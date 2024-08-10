import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class LoginViewFooter extends StatelessWidget {
  const LoginViewFooter({super.key});

  @override
  Widget build(BuildContext context) {
    List items = ['Marketplace', 'License', 'Terms of Use', 'Blog'];
    return Row(
      children: List.generate(
        items.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 42),
          child: Text(items[index],
              style: Styles.medium14(context).copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}