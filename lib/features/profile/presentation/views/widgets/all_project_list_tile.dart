import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_card.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

import '../../../data/models/profile_list_tile_model.dart';

class AllProjectsListTile extends StatelessWidget {
  const AllProjectsListTile({super.key, required this.allProkectListTileModel});
  final ProfileListTileModel allProkectListTileModel;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListTile(
        leading: Image.asset(allProkectListTileModel.image!),
        title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allProkectListTileModel.title,
                style: Styles.medium16(context).copyWith(
                  color: const Color(0xff2B3674),
                ))),
        subtitle: Row(
          children: [
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('${allProkectListTileModel.subtitle} • ',
                    style: Styles.medium14(context))),
            Flexible(
              child: CustomSvgPicture(
                  svg: SvgModel(image: Assets.imagesSeeProjectDetails)),
            )
          ],
        ),
        trailing: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Icon(Icons.edit, color: Color(0xff8F9BBA), size: 18)),
      ),
    ));
  }
}
