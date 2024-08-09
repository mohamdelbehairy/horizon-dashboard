import 'package:flutter/material.dart';

import 'bussiness_design_and_team_member.dart';
import 'security_and_starbucks_section.dart';

class MainDashboardFinalSection extends StatelessWidget {
  const MainDashboardFinalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: BussinessDesignAndTeamMember()),
        SizedBox(width: 16),
        Expanded(child: SecurityAndStarbucksSection()),
      ],
    );
  }
}
