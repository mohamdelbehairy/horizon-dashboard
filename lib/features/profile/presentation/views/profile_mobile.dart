import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_app_bar.dart';

import '../../../login/presentation/widgets/copy_right_widget.dart';
import '../widgets/all_projects.dart';
import '../widgets/general_information.dart';
import '../widgets/profile_info_widget.dart';
import '../widgets/profile_notification.dart';
import '../widgets/profile_storge.dart';

class ProfileMobile extends StatelessWidget {
  const ProfileMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(title: 'Profile'),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              ProfileInfoWidget(),
              SizedBox(height: 16),
              ProfileStorge(),
              SizedBox(height: 16),
              AllProjects(),
              SizedBox(height: 16),
              ProfileNotification(),
              SizedBox(height: 16),
              GeneralInformation(),
            ],
          ),
        ),
        SizedBox(height: 16),
        MobileCopyRightWidget()
      ],
    );
  }
}
