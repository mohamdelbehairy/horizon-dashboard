import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../login/presentation/views/login_view.dart';
import '../../manager/drawer/drawer_cubit.dart';

class CustomBlocConsumerDrawer extends StatelessWidget {
  const CustomBlocConsumerDrawer(
      {super.key,
      required this.dashboard,
      required this.market,
      required this.tables,
      required this.kanban,
      required this.profile});
  final WidgetBuilder dashboard, market, tables, kanban, profile;

  @override
  Widget build(BuildContext context) {
    var drawer = context.read<DrawerCubit>();
    return BlocConsumer<DrawerCubit, DrawerState>(listener: (context, state) {
      if (drawer.activeIndex == 5) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const LoginView()));
        drawer.changeActiveIndex(0);
      }
    }, builder: (context, state) {
      if (drawer.activeIndex == 0) {
        return dashboard(context);
      }
      if (drawer.activeIndex == 1) {
        return market(context);
      }
      if (drawer.activeIndex == 2) {
        return tables(context);
      }
      if (drawer.activeIndex == 3) {
        return kanban(context);
      }
      if (drawer.activeIndex == 4) {
        return profile(context);
      } else {
        return const SizedBox();
      }
    });
  }
}
