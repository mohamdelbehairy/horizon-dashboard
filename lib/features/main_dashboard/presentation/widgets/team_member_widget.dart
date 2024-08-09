import 'package:flutter/material.dart';
import 'package:horizon/features/main_dashboard/data/models/team_member_model.dart';

import 'team_member_list_tile.dart';

class TeamMemberWidget extends StatelessWidget {
  const TeamMemberWidget({super.key, required this.teamMemberModel});
  final TeamMemberModel teamMemberModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: TeamMemberListTile(teamMemberModel: teamMemberModel),
    );
  }
}
