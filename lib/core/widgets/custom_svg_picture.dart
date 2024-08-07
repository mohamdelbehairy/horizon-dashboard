import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:horizon/core/models/svg_model.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({super.key, required this.svg});

  final SvgModel svg;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(svg.image,
        colorFilter: svg.color != null
            ? ColorFilter.mode(svg.color!, BlendMode.srcIn)
            : null,
        fit: svg.fit);
  }
}
