import 'package:flutter/material.dart';

class BackgroundModel {
  final Widget child;
  final double? height;
  final double? left, right, bottom;

  BackgroundModel(
      {required this.child,
      this.left,
      this.right,
      this.bottom,
      this.height});
}
