import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

class BottomTimeAndVideo extends StatelessWidget {
  const BottomTimeAndVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                CustomSvgPicture(svg: SvgModel(image: Assets.imagesTimer)),
                const SizedBox(width: 8),
                Text('85 mins', style: Styles.bold14(context)),
              ],
            ),
          ),
        ),
        const SizedBox(width: 24),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                CustomSvgPicture(
                    svg: SvgModel(image: Assets.imagesSlowMotionVideo)),
                const SizedBox(width: 8),
                Text('Video format', style: Styles.bold14(context)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
