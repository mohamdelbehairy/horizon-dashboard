import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class BussinessDesignBodyText extends StatelessWidget {
  const BussinessDesignBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text('What do you need to know to\n create better products?',
              style: Styles.bold20(context)),
        ));
  }
}
