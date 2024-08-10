import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../../../core/widgets/custom_select_item.dart';

class KeepMeLogingWidget extends StatelessWidget {
  const KeepMeLogingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomSelectItem(),
        const SizedBox(width: 12),
        Text('Keep me logged in',
            style: Styles.regular14(context)
                .copyWith(color: const Color(0xff2B3674)))
      ],
    );
  }
}
