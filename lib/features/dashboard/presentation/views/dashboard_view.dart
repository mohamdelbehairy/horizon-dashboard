import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/adaptive_layout_widget.dart';
import '../widgets/desktop_dashboard.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f7fe),
      body: AdaptiveLayoutWidget(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DesktopDashboard()),
    );
  }
}
