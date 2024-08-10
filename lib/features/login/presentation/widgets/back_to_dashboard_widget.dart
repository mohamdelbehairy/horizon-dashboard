import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class BackToDashboardWidget extends StatelessWidget {
  const BackToDashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Row(
        children: [
          const Icon(Icons.arrow_back_ios, color: Color(0xffA3AED0), size: 12),
          const SizedBox(width: 4),
          Text('Back to dashboard', style: Styles.medium14(context))
        ],
      ),
    );
  }
}
