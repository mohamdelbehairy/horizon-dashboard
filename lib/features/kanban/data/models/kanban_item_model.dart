import 'package:flutter/material.dart';

class KanbanItemModel {
  final String title, subTitle, buttonName, footerImage;
  final String? backgroundImage;
  final Color color;

  KanbanItemModel(
      {required this.title,
      required this.subTitle,
      required this.buttonName,
      required this.footerImage,
      this.backgroundImage,
      required this.color});
}
