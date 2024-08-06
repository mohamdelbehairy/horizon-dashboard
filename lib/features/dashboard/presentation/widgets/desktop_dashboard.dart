import 'package:flutter/material.dart';

import 'drawer_header_widget.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              DrawerHeaderWidget(),
            ],
          ),
        )
      ],
    );
  }
}
