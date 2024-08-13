import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import '../../../../core/models/background_model.dart';
import 'all_projects_header.dart';
import 'all_projects_list_view.dart';

class AllProjects extends StatelessWidget {
  const AllProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllProjectsHeader(),
            SizedBox(height: 24),
            AllProjectsListView(),
            // SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

