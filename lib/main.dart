import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/features/dashboard/data/manager/drawer/drawer_cubit.dart';
import 'package:horizon/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:horizon/features/kanban/data/manager/kanban/kanban_cubit.dart';
import 'package:horizon/features/profile/data/manager/switch/switch_cubit.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const Horizon(),
  ));
}

class Horizon extends StatelessWidget {
  const Horizon({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DrawerCubit()),
        BlocProvider(create: (context) => SwitchCubit()),
        BlocProvider(create: (context)=>KanbanCubit())
      ],
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: const DashboardView(),
      ),
    );
  }
}
