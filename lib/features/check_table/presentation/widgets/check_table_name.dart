import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import 'checktable_select_and_unselect_item.dart';

class CheckTableName extends StatelessWidget {
  const CheckTableName({super.key});

  @override
  Widget build(BuildContext context) {
      List items = [
    'Horizon UI PRO',
    'Horizon UI Free',
    'Weekly Update',
    'Venus 3D Asset',
    'Marketplace'
  ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('NAME', style: Styles.medium14(context)),
        const SizedBox(height: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(items.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  const CheckTableSelectItem(),
                  const SizedBox(width: 12),
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(items[index], style: Styles.bold14(context)))
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}
