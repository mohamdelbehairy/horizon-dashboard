import 'package:flutter/material.dart';

import 'all_projects.dart';
import 'general_information.dart';
import 'profile_notification.dart';

class AllProjectsAndGeneralAndNotificationSection extends StatelessWidget {
  const AllProjectsAndGeneralAndNotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: AllProjects()),
        SizedBox(width: 16),
        Expanded(flex: 3, child: GeneralInformation()),
        SizedBox(width: 16),
        Expanded(flex: 2, child: ProfileNotification()),
      ],
    );
  }
}
