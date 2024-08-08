import 'package:flutter/material.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';

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
            child: Container(
              height: 40,
              width: 128,
              decoration: BoxDecoration(
                  color: const Color(0xff4318FF),
                  borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Text('Get Started',
                    style:
                        Styles.bold14(context).copyWith(color: Colors.white)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
