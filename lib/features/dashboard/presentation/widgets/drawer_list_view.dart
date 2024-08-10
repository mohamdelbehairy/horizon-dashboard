import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../data/models/drawer_item_model.dart';
import 'active_and_inactive_drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  int activeIndex = 0;
  List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMarket, title: 'NFT Marketplace'),
    DrawerItemModel(image: Assets.imagesTables, title: 'Tables'),
    DrawerItemModel(image: Assets.imagesKanban, title: 'Kanban'),
    DrawerItemModel(image: Assets.imagesProfile, title: 'Profile'),
    DrawerItemModel(image: Assets.imagesSignin, title: 'Sign In'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.asMap().entries.map((e) {
        return GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = e.key;
                log('activeIndex: $activeIndex');
              });
            },
            child: activeIndex == e.key
                ? ActiveDrawerItem(drawerItemModel: items[e.key])
                : InActiveDrawerItem(drawerItemModel: items[e.key]));
      }).toList(),
    );
  }
}
