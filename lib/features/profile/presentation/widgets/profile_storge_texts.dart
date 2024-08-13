import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class ProfileStorgeTexts extends StatelessWidget {
  const ProfileStorgeTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Your storage', style: Styles.bold24(context)),
        const SizedBox(height: 6),
        Text('Supervise your drive space\n in the easiest way',
            textAlign: TextAlign.center,
            style: Styles.regular12(context).copyWith(fontSize: 14)),
      ],
    );
  }
}
