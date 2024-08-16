import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/switch/switch_cubit.dart';
import 'notification_list_tile.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    var items = context.read<SwitchCubit>().items;
    return Expanded(
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return NotificationListTile(notificationModel: items[index]);
          }),
    );
  }
}
