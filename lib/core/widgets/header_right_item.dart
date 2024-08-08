import 'package:flutter/material.dart';

class HeaderRightItem extends StatelessWidget {
  const HeaderRightItem({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 37,
      decoration: BoxDecoration(
          color: const Color(0xffF4F7FE),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}