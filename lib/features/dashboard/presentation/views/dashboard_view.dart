import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/adaptive_layout_widget.dart';
import 'package:horizon/features/dashboard/presentation/views/widgets/custom_drawer.dart';

import 'widgets/mobile_dashboard.dart';
import 'widgets/dashboard_view_appbar.dart';
import 'widgets/desktop_dashboard.dart';
import 'widgets/tablet_dashboard.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xfff4f7fe),
        appBar: MediaQuery.sizeOf(context).width < 800
            ? dashboardViewAppBar(scaffoldKey)
            : null,
        drawer: MediaQuery.sizeOf(context).width < 800
            ? const CustomDrawer()
            : null,
        body: AdaptiveLayoutWidget(
            mobileLayout: (context) => const MobileDashboard(),
            tabletLayout: (context) => const TabletDashboard(),
            desktopLayout: (context) => const DesktopDashboard()));
  }
}
