import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/features/profile/data/models/notification_model.dart';

part 'switch_state.dart';

class SwitchCubit extends Cubit<SwitchState> {
  SwitchCubit() : super(SwitchInitial());

  List<NotificationModel> items = [
    NotificationModel(
        value: true, title: 'Item update notifications', index: 0),
    NotificationModel(
        value: false, title: 'Item comment notifications', index: 1),
    NotificationModel(
        value: true, title: 'Buyer review notifications', index: 2),
    NotificationModel(
        value: false, title: 'Rating reminders notifications', index: 3),
    NotificationModel(
        value: false, title: 'Meetups near you notifications', index: 4),
    NotificationModel(
        value: true, title: 'Company news notifications', index: 5),
    NotificationModel(
        value: true, title: 'New launches and projects', index: 6),
    NotificationModel(value: false, title: 'Monthly product changes', index: 7),
    NotificationModel(value: false, title: 'Subscribe to newsletter', index: 8),
    NotificationModel(
        value: true, title: 'Email me when someone follows me', index: 9),
  ];

  void updateValue({required bool newValue, required int index}) {
    for (var elemet in items) {
      if (elemet.index == index) {
        elemet.value = newValue;
      }
    }
    emit(SwitchChanged());
  }

  @override
  void onChange(Change<SwitchState> change) {
    log('change: $change');
    super.onChange(change);
  }
}
