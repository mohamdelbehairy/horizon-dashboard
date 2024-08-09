import 'package:flutter/material.dart';

import 'security.dart';

class SecurityAndStarbucksSection extends StatelessWidget {
  const SecurityAndStarbucksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Security()),
        const SizedBox(width: 16),
        Expanded(child: Container()),
      ],
    );
  }
}

