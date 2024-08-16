import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/features/profile/presentation/views/widgets/switch_notification.dart';

import '../../../data/models/notification_model.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({super.key, required this.notificationModel});

  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width > 1635 ? 20 : 8),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        minLeadingWidth: 0.0,
        horizontalTitleGap: 0.0,
        leading: SwitchNotification(notificationModel: notificationModel),
        title: Text(notificationModel.title,
            style: Styles.medium14(context)
                .copyWith(color: const Color(0xff2B3674))),
      ),
    );
  }
}
