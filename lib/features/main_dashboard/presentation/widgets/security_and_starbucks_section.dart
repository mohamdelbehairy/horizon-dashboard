import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import '../../../../core/widgets/custom_background.dart';
import 'security.dart';

class SecurityAndStarbucksSection extends StatelessWidget {
  const SecurityAndStarbucksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Security()),
        const SizedBox(width: 16),
        Expanded(
            child: CustomBackground(
                backgroundModel:
                    BackgroundModel(height: 345, child: const SizedBox()))),
        // Expanded(child: Starbucks()),
      ],
    );
  }
}
