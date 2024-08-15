import 'package:flutter/material.dart';
import 'security.dart';

class SecurityAndStarbucksSection extends StatelessWidget {
  const SecurityAndStarbucksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Security()),
        SizedBox(width: 16),
        Expanded(child: Security())
        // Expanded(child: Starbucks()),
      ],
    );
  }
}
