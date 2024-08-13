import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'all_projects.dart';

class AllProjectsAndGeneralAndNotificationSection extends StatelessWidget {
  const AllProjectsAndGeneralAndNotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 2, child: AllProjects()),
        const SizedBox(width: 16),
        Expanded(
            flex: 3,
            child: CustomBackground(
                backgroundModel: BackgroundModel(child: Container()))),
        const SizedBox(width: 16),
        Expanded(
            child: CustomBackground(
                backgroundModel: BackgroundModel(child: Container()))),
      ],
    );
  }
}

