import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

class ItemTable extends StatelessWidget {
  const ItemTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: 33,
      decoration: BoxDecoration(
          color: const Color(0xffF4F7FE),
          borderRadius: BorderRadius.circular(10)),
      child: CustomSvgPicture(
          svg: SvgModel(
              image: Assets.imagesTables, color: const Color(0xff4318FF))),
    );
  }
}
