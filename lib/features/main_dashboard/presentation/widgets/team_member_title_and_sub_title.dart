import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../data/models/team_member_model.dart';

class TeamMemberTitlAndSubTitle extends StatelessWidget {
  const TeamMemberTitlAndSubTitle({super.key, required this.teamMemberModel});
  final TeamMemberModel teamMemberModel;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(teamMemberModel.title, style: Styles.bold16(context))),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(teamMemberModel.subTitle, style: Styles.medium12(context)))
        ],
      ),
    );
  }
}