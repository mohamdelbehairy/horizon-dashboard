import 'package:flutter/material.dart';

import '../../data/models/team_member_model.dart';
import 'team_member_leading.dart';
import 'team_member_title_and_sub_title.dart';
import 'team_member_trailing.dart';

class TeamMemberListTile extends StatelessWidget {
  const TeamMemberListTile({super.key, required this.teamMemberModel});
  final TeamMemberModel teamMemberModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                children: [
                  TeamMemberLeading(teamMemberModel: teamMemberModel),
                  const SizedBox(width: 12),
                  TeamMemberTitlAndSubTitle(teamMemberModel: teamMemberModel),
                ],
              ),
            ),
            const TeamMemberTrailing()
          ],
        ));
  }
}
