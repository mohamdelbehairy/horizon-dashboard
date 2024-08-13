import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_app_bar.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/core/widgets/custom_scroll_view_dashboard.dart';
import 'package:horizon/features/profile/presentation/widgets/profile_storge.dart';
import '../widgets/profile_info_widget.dart';

class ProfileDesktop extends StatelessWidget {
  const ProfileDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollViewDashboard(
      children: [
        const CustomAppBar(title: 'Profile'),
        const SizedBox(height: 16),
        Row(
          children: [
            const Expanded(flex: 2, child: ProfileInfoWidget()),
            const SizedBox(width: 16),
            const ProfileStorge(),
            const SizedBox(width: 16),
            Expanded(
                flex: 2,
                child: CustomBackground(
                    backgroundModel:
                        BackgroundModel(height: 320, child: Container()))),
          ],
        )
      ],
    );
  }
}
