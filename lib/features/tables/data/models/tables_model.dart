import 'package:flutter/material.dart';

class TablesBodyModel {
  final String title, dateTime;
  final String? image1,
      image2,
      image3,
      persentage,
      value,
      textStatus,
      complexProgress;
  final Color? colorStatus;
  final IconData? iconStatus;

  TablesBodyModel(
      {required this.title,
      this.image1,
      required this.dateTime,
      this.image2,
      this.image3,
      this.persentage,
      this.value,
      this.textStatus,
      this.complexProgress,
      this.colorStatus,
      this.iconStatus});
}
