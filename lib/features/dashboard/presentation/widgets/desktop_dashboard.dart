import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';

import 'active_and_inactive_drawer_item.dart';
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
              SizedBox(height: 16),
              InActiveDrawerItem(),
            ],
          ),
        )
      ],
    );
  }
}
