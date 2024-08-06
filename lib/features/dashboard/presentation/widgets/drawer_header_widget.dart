import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HORIZON', style: Styles.title(context)),
            const SizedBox(width: 4),
            Text('FREE',
                style: Styles.title(context)
                    .copyWith(fontWeight: FontWeight.w400)),
          ],
        ),
        const SizedBox(height: 20),
        const Divider(color: Color(0xffF4F7FE), thickness: 1),
      ],
    );
  }
}
