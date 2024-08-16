import 'package:flutter/material.dart';
import 'package:horizon/features/profile/presentation/views/widgets/profile_storge.dart';
import 'package:horizon/features/profile/presentation/views/widgets/profile_upload_files.dart';

import 'profile_info_widget.dart';

class ProfileInfoAndStorgeAndUploadSection extends StatelessWidget {
  const ProfileInfoAndStorgeAndUploadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: ProfileInfoWidget()),
        SizedBox(width: 16),
        Expanded(child: ProfileStorge()),
        SizedBox(width: 16),
        Expanded(flex: 2, child: ProfileUploadFiles()),
      ],
    );
  }
}
