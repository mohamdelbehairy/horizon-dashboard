import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_app_bar.dart';
import 'package:horizon/core/widgets/custom_footer.dart';

import '../../../../core/widgets/custom_scroll_view_dashboard.dart';
import 'widgets/all_projects.dart';
import 'widgets/general_information.dart';
import 'widgets/profile_info_widget.dart';
import 'widgets/profile_notification.dart';
import 'widgets/profile_storge.dart';
import 'widgets/profile_upload_files.dart';

class ProfileTablet extends StatelessWidget {
  const ProfileTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollViewDashboard(
      children: [
        CustomAppBar(title: 'Profile'),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(flex: 2, child: ProfileInfoWidget()),
            SizedBox(width: 16),
            Expanded(child: ProfileStorge()),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(flex: 2, child: ProfileUploadFiles()),
            SizedBox(width: 16),
            Expanded(child: ProfileStorge()),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(flex: 2, child: AllProjects()),
            SizedBox(width: 16),
            Expanded(flex: 2, child: ProfileNotification()),
          ],
        ),
        SizedBox(height: 16),
        GeneralInformation(),
        SizedBox(height: 16),
        Expanded(child: CustomFooter()),
        SizedBox(height: 16),
      ],
    );
  }
}
