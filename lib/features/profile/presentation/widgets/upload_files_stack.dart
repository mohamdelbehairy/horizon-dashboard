import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

import 'upload_files_body.dart';

class UploadFilesStack extends StatelessWidget {
  const UploadFilesStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomSvgPicture(svg: SvgModel(image: Assets.imagesUploadBackground)),
        const Positioned(
            top: 0.0,
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            child: UploadFilesBody())
      ],
    );
  }
}
