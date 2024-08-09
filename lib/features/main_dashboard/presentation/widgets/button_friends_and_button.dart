import 'package:flutter/material.dart';
import 'package:horizon/core/models/button_model.dart';
import 'package:horizon/core/utils/assets.dart';

import '../../../../core/widgets/custom_button.dart';

class ButtonFriendsAndButton extends StatelessWidget {
  const ButtonFriendsAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(child: Image.asset(Assets.imagesAssigned)),
        const SizedBox(width: 8),
        Flexible(
          child: FittedBox(
            child: CustomButton(
              buttonModel: ButtonModel(
                  height: 40, width: 128, buttonName: 'Get Started'),
            ),
          ),
        )
      ],
    );
  }
}
