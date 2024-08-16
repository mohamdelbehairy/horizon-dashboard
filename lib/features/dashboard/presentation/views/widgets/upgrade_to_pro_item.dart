import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class UpgradeToProItem extends StatelessWidget {
  const UpgradeToProItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 228,
      decoration: BoxDecoration(
        color: const Color(0xff4318FF),
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff868CFF),
            Color(0xff4318FF),
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 40 + 30),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text('Upgrade to PRO',
                  style: Styles.bold16(context).copyWith(color: Colors.white))),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
                'to get access to all features! Connect with Venus World! ',
                textAlign: TextAlign.center,
                style: Styles.medium14(context)
                    .copyWith(color: const Color(0xffE9EDF7))),
          )
        ],
      ),
    );
  }
}
