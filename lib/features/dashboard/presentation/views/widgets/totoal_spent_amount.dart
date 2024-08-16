import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class TotalSpentAmout extends StatelessWidget {
  const TotalSpentAmout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(r'$37.5K', style: Styles.bold34(context)),
        Row(
          children: [
            Text('Total Spent', style: Styles.medium14(context)),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_drop_up, color: Color(0xff05CD99), size: 22),
            const SizedBox(width: 2),
            Text('+2.45%', style: Styles.bold12(context))
          ],
        ),
      ],
    );
  }
}
