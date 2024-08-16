import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_scroll_view_dashboard.dart';
import '../widgets/development_table.dart';

class TablesDesktop extends StatelessWidget {
  const TablesDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollViewDashboard(
      children: [
        const CustomAppBar(title: 'Tables'),
        const SizedBox(height: 16),
        Row(
          children: [
            const Expanded(child: DevelopmentTable()),
            const SizedBox(width: 16),
            Expanded(
                child: CustomBackground(
                    backgroundModel: BackgroundModel(child: Container()))),
          ],
        )
      ],
    );
  }
}

