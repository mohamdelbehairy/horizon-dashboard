import 'package:flutter/material.dart';

class BackgroundModel {
  final Widget child;
  final double? height, width;
  final double? left, right, bottom, top;

  BackgroundModel(
      {required this.child,
      this.left,
      this.right,
      this.bottom,
      this.top,
      this.height,this.width});
}
