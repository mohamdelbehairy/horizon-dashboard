import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/features/dashboard/presentation/manager/drawer/drawer_cubit.dart';
import 'package:horizon/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:horizon/features/kanban/presentation/manager/kanban/kanban_cubit.dart';
import 'package:horizon/features/profile/presentation/manager/switch/switch_cubit.dart';
import 'package:horizon/features/tables/presentation/manager/tables/tables_cubit.dart';

import 'features/nft_marketplace/presentation/manager/top_creators_and_history/top_creators_and_history_cubit.dart';
import 'features/nft_marketplace/presentation/manager/trending_and_recently/trending_and_recently_cubit.dart';

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
        BlocProvider(create: (context) => KanbanCubit()),
        BlocProvider(create: (context) => TablesCubit()),
        BlocProvider(create: (context) => TrendingAndRecentlyCubit()),
        BlocProvider(create: (context) => TopCreatorsAndHistoryCubit())
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
