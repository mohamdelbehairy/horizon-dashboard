import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:horizon/core/utils/assets.dart';

class TextFieldListView extends StatelessWidget {
  const TextFieldListView({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      Assets.imagesNotification,
      Assets.imagesDarkMode,
      Assets.imagesMark,
      Assets.imagesProfileImage
    ];
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(items.length, (index) {
        return index != 3
            ? Expanded(
                child: SvgPicture.asset(items[index], fit: BoxFit.scaleDown))
            : Expanded(
                child: Image.asset(Assets.imagesProfileImage,
                    fit: BoxFit.scaleDown));
      }),
    ));
  }
}
