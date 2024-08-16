import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'complete_profile.dart';
import 'upload_files_stack.dart';

class ProfileUploadFiles extends StatelessWidget {
  const ProfileUploadFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        height: MediaQuery.sizeOf(context).width > 1700 ? 360 : 300,
        right: 16,
        left: 16,
        top: 16,
        bottom: 16,
        child: const Row(
          children: [
            Expanded(child: UploadFilesStack()),
            SizedBox(width: 24),
            Expanded(child: CompleteProfile())
          ],
        ),
      ),
    );
  }
}

