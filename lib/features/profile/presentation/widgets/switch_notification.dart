import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/features/profile/data/manager/switch/switch_cubit.dart';
import 'package:horizon/features/profile/data/models/notification_model.dart';

class SwitchNotification extends StatelessWidget {
  const SwitchNotification({super.key, required this.notificationModel});
  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    var switchCubit = context.read<SwitchCubit>();
    return BlocBuilder<SwitchCubit, SwitchState>(
      builder: (context, state) {
        return Transform.scale(
          scale: 0.7,
          child: Switch(
              activeColor: Colors.white,
              inactiveThumbColor: Colors.white,
              activeTrackColor: const Color(0xff4318FF),
              inactiveTrackColor: const Color(0xffE0E5F2),
              trackOutlineColor:
                  const WidgetStatePropertyAll(Colors.transparent),
              value: notificationModel.value,
              onChanged: (value) {
                switchCubit.updateValue(
                    newValue: value, index: notificationModel.index);
              }),
        );
      },
    );
  }
}
