import 'package:flutter/material.dart';

import '../../data/models/team_member_model.dart';

class TeamMemberLeading extends StatelessWidget {
  const TeamMemberLeading({super.key, required this.teamMemberModel});
  final TeamMemberModel teamMemberModel;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: CircleAvatar(
            radius: 23,
            child: Image.asset(teamMemberModel.image, fit: BoxFit.scaleDown)));
  }
}
