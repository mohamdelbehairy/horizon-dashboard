import 'package:flutter/material.dart';

class MainDashboardItemModel {
  final String title, subtitle1;
  final String? image, subtitle2, subtitle3;
  final Widget? trailing;
  final int? index;

  MainDashboardItemModel(
      {this.image,
      required this.title,
      required this.subtitle1,
      this.subtitle2,
      this.subtitle3,
      this.trailing,
      this.index});
}
