import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bussiness_design.dart';
import 'team_members.dart';

class BussinessDesignAndTeamMember extends StatelessWidget {
  const BussinessDesignAndTeamMember({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: BussinessDesign()),
        SizedBox(width: 16),
        Expanded(child: TeamMembers()),
      ],
    );
  }
}
