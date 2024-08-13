import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_app_bar.dart';
import 'package:horizon/core/widgets/custom_scroll_view_dashboard.dart';
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
      ],
    );
  }
}
