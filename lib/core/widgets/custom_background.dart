import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground(
      {super.key, required this.child, this.left, this.right, this.bottom});
  final Widget child;
  final double? left, right, bottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 350,
      padding: EdgeInsets.only(
          left: left ?? 32, right: right ?? 32, top: 32, bottom: bottom ?? 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}
