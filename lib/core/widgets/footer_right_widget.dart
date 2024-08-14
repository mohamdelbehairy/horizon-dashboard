import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class FooterRightWidget extends StatelessWidget {
  const FooterRightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      'Marketplace',
      'License',
      'Terms of Use',
      'Blog',
    ];
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            items.length,
            (index) => Flexible(
                  child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child:
                          Text(items[index], style: Styles.medium14(context))),
                )));
  }
}
