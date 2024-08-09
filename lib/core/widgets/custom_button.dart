import 'package:flutter/material.dart';
import 'package:horizon/core/models/button_model.dart';
import 'package:horizon/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonModel});
  final ButtonModel buttonModel;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: buttonModel.height,
        minWidth: buttonModel.width,
        color: const Color(0xff4318FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onPressed: () {},
        child: Text(buttonModel.buttonName,
            style: Styles.bold14(context).copyWith(color: Colors.white)));
  }
}
