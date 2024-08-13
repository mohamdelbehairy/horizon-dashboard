import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

import 'profile_storge_circle_widget.dart';
import 'profile_storge_header.dart';
import 'profile_storge_texts.dart';

class ProfileStorge extends StatelessWidget {
  const ProfileStorge({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        // width: 381,
        height: MediaQuery.sizeOf(context).width > 1700 ? 360 : 300,
        child: Column(
          children: [
            const ProfileStorgeHeader(),
            const Flexible(child: ProfileStorgeCircleWidget()),
            const SizedBox(height: 16),
            const ProfileStorgeTexts(),
            const SizedBox(height: 24),
            CustomSvgPicture(svg: SvgModel(image: Assets.imagesStorageSize))
          ],
        ),
      ),
    );
  }
}
