import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width > 1225 ? 32 : 16,
          right: MediaQuery.sizeOf(context).width > 1225 ? 32 : 16,
          top: 32,
          bottom: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}
