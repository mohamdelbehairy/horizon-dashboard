import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

class UploadFilesBody extends StatelessWidget {
  const UploadFilesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSvgPicture(svg: SvgModel(image: Assets.imagesUploadIcon)),
        const SizedBox(height: 24),
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('Upload Files',
                style: Styles.bold20(context)
                    .copyWith(color: const Color(0xff4318FF)))),
        const SizedBox(height: 12),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('PNG, JPG and GIF files are allowed',
              style: Styles.medium12(context)
                  .copyWith(color: const Color(0xff8F9BBA))),
        )
      ],
    );
  }
}
