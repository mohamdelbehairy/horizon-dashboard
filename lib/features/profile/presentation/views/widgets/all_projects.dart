import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import '../../../../../core/models/background_model.dart';
import 'profile_header.dart';
import 'all_projects_list_view.dart';

class AllProjects extends StatelessWidget {
  const AllProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        height: MediaQuery.sizeOf(context).width > 1600 ? 500 : 480,
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(
                  title: 'All Projects',
                  subTitle:
                      'Here you can find more details about your projects. Keep you\n user engaged by providing meaningful information.'),
              SizedBox(height: 16),
              AllProjectsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
