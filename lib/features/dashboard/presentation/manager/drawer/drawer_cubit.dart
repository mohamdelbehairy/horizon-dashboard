import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  DrawerCubit() : super(DrawerInitial());

  int activeIndex = 0;

  void changeActiveIndex(int index) {
    activeIndex = index;
    emit(DrawerChanged());
  }

  @override
  void onChange(Change<DrawerState> change) {
    log('change: $change');
    super.onChange(change);
  }
}
