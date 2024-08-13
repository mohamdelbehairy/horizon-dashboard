import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'profile_storge_circle_widget.dart';
import 'profile_storge_header.dart';
import 'profile_storge_texts.dart';

class ProfileStorge extends StatelessWidget {
  const ProfileStorge({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        width: 381,
        child: const Column(
          children: [
            ProfileStorgeHeader(),
            ProfileStorgeCircleWidget(),
            SizedBox(height: 16),
            ProfileStorgeTexts(),
          ],
        ),
      ),
    );
  }
}
