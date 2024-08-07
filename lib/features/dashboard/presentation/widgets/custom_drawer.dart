import 'package:flutter/material.dart';

import 'drawer_header_widget.dart';
import 'drawer_list_view.dart';
import 'upgrade_to_pro_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  DrawerHeaderWidget(),
                  SizedBox(height: 16),
                  DrawerListView(),
                  Expanded(child: SizedBox(height: 50)),
                  UpgradeToProWidget(),
                  SizedBox(height: 16),
                ],
              ))
        ],
      ),
    );
  }
}
