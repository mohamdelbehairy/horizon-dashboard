import 'package:flutter/material.dart';
import 'package:horizon/core/models/button_model.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_button.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        FittedBox(
            fit: BoxFit.scaleDown,
            child:
                Text('Complete your profile', style: Styles.bold24(context))),
        const SizedBox(height: 8),
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
                'Stay on the pulse of distributed\n projects with an anline whiteboard\n to plan, coordinate and discuss',
                style: Styles.regular12(context).copyWith(fontSize: 14))),
        const Spacer(),
        CustomButton(
            buttonModel:
                ButtonModel(height: 46, width: 140, buttonName: 'Publish now')),
        const SizedBox(height: 32),
      ],
    );
  }
}
