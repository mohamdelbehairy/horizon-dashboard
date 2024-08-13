import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Adela Parkson', style: Styles.bold20(context)),
        Text('Product Designer', style: Styles.medium14(context)),
      ],
    );
  }
}
