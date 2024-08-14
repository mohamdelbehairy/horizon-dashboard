import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'notification_list_view.dart';
import 'profile_notification_header.dart';

class ProfileNotification extends StatelessWidget {
  const ProfileNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        height: MediaQuery.sizeOf(context).width > 1600 ? 500 : 480,
        left: 0.0,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileNotificationHeader(),
            SizedBox(height: 20),
            NotificationListView()
          ],
        ),
      ),
    );
  }
}
