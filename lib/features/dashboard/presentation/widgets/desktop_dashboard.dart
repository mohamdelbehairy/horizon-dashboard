import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/features/dashboard/data/manager/drawer/drawer_cubit.dart';

import '../../../login/presentation/views/login_view.dart';
import 'custom_drawer.dart';
import '../../../main_dashboard/presentation/views/main_dashboard_desktop.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var drawer = context.read<DrawerCubit>();
    return BlocConsumer<DrawerCubit, DrawerState>(
      listener: (context, state) {
        if (drawer.activeIndex == 5) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const LoginView()));
          drawer.changeActiveIndex(0);
        }
      },
      builder: (context, state) {
        return Row(
          children: [
            const CustomDrawer(),
            if (drawer.activeIndex == 0)
              const Expanded(child: MainDashboardDesktop()),
            if (drawer.activeIndex == 1)
              Expanded(child: Container(color: Colors.red)),
            if (drawer.activeIndex == 2)
              Expanded(child: Container(color: Colors.blue)),
          ],
        );
      },
    );
  }
}
