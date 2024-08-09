import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, required this.backgroundModel});

  final BackgroundModel backgroundModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: backgroundModel.height,
      padding: EdgeInsets.only(
          left: backgroundModel.left ??
              (MediaQuery.sizeOf(context).width > 1400 ? 32 : 16),
          right: backgroundModel.right ??
              (MediaQuery.sizeOf(context).width > 1400 ? 32 : 16),
          top: backgroundModel.top ??
              (MediaQuery.sizeOf(context).width > 1400 ? 32 : 16),
          bottom: backgroundModel.bottom ?? 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: backgroundModel.child,
    );
  }
}
