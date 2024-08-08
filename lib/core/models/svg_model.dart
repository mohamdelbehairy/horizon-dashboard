import 'package:flutter/material.dart';

class SvgModel {
  final String image;
  final Color? color;
  final BoxFit fit;
  final double? hight;

  SvgModel(
      {required this.image, this.color, this.fit = BoxFit.contain, this.hight});
}
