import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'team_member_header.dart';

import 'team_member_list_view.dart';

class TeamMembers extends StatelessWidget {
  const TeamMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).width > 1600 ? 345 : null,
      child: const CustomBackground(
          child: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            TeamMemberHeader(),
            // SizedBox(height: 16),
            TeamMemberListView(),
          ],
        ),
      )),
    );
  }
}
