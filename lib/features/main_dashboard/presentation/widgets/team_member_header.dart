import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';
import 'package:horizon/core/widgets/header_right_item.dart';

class TeamMemberHeader extends StatelessWidget {
  const TeamMemberHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text('Team members',
                  style: Styles.bold16(context).copyWith(fontSize: 18))),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: HeaderRightItem(
                child: CustomSvgPicture(
                    svg: SvgModel(image: Assets.imagesTeamMember))),
          ),
        )
      ],
    );
  }
}