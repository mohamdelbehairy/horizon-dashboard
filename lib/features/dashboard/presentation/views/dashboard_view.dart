import 'package:flutter/material.dart';
import '../widgets/desktop_dashboard.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff4f7fe),
      body: DesktopDashboard(),
    );
  }
}
