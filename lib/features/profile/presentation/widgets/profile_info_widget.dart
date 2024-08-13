import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/features/profile/presentation/widgets/profile_image_stack.dart';
import 'package:horizon/features/profile/presentation/widgets/profile_name.dart';

import 'profile_details_list_view.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          child: const Column(
        children: [
          ProfileImageStack(),
          SizedBox(height: 38),
          ProfileName(),
          SizedBox(height: 32),
          ProfileDetailsListView(),
          SizedBox(height: 24),
        ],
      )),
    );
  }
}
