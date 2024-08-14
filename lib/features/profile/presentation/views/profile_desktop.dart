import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/core/widgets/custom_app_bar.dart';
import 'package:horizon/core/widgets/custom_footer.dart';
import 'package:horizon/core/widgets/custom_scroll_view_dashboard.dart';
import '../widgets/all_projects_and_general_and_notification.dart';
import '../widgets/profile_info_and_storge_upload_section.dart';

class ProfileDesktop extends StatelessWidget {
  const ProfileDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollViewDashboard(
      children: [
        CustomAppBar(title: 'Profile'),
        SizedBox(height: 16),
        ProfileInfoAndStorgeAndUploadSection(),
        SizedBox(height: 16),
        AllProjectsAndGeneralAndNotificationSection(),
        SizedBox(height: 16),
        Expanded(child: CustomFooter()),
        SizedBox(height: 16),
      ],
    );
  }
}
