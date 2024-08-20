import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/features/profile/presentation/views/widgets/profile_image_stack.dart';
import 'package:horizon/features/profile/presentation/views/widgets/profile_name.dart';

import 'profile_details_list_view.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          height: MediaQuery.sizeOf(context).width < 800
              ? null
              : MediaQuery.sizeOf(context).width > 1700
                  ? 360
                  : 300,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ProfileImageStack(),
                const SizedBox(height: 38),
                const ProfileName(),
                if (MediaQuery.sizeOf(context).width > 1700 ||
                    (MediaQuery.sizeOf(context).width < 1600 &&
                        MediaQuery.sizeOf(context).width > 1300) ||
                    MediaQuery.sizeOf(context).width < 900)
                  const SizedBox(height: 32),
                if (MediaQuery.sizeOf(context).width < 1700 &&
                    MediaQuery.sizeOf(context).width >= 1600)
                  const SizedBox(height: 12),
                if (MediaQuery.sizeOf(context).width <= 1400)
                  const SizedBox(height: 16),
                const ProfileDetailsListView(),
                if (MediaQuery.sizeOf(context).width > 1700)
                  const SizedBox(height: 24),
              ],
            ),
          )),
    );
  }
}
