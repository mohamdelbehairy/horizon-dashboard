import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'team_member_header.dart';

import 'team_member_list_view.dart';

class TeamMembers extends StatelessWidget {
  const TeamMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          height: MediaQuery.sizeOf(context).width > 1600 ? 345 : 345,
          child: const SingleChildScrollView(
            child: Column(
              children: [
                TeamMemberHeader(),
                TeamMemberListView(),
              ],
            ),
          )),
    );
  }
}
