import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/features/dashboard/presentation/manager/drawer/drawer_cubit.dart';

import '../../../../../core/utils/assets.dart';
import '../../../data/models/drawer_item_model.dart';
import 'active_and_inactive_drawer_item.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<DrawerItemModel> items = [
      DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
      DrawerItemModel(image: Assets.imagesMarket, title: 'NFT Marketplace'),
      DrawerItemModel(image: Assets.imagesTables, title: 'Tables'),
      DrawerItemModel(image: Assets.imagesKanban, title: 'Kanban'),
      DrawerItemModel(image: Assets.imagesProfile, title: 'Profile'),
      DrawerItemModel(image: Assets.imagesSignin, title: 'Sign In'),
    ];
    return BlocBuilder<DrawerCubit, DrawerState>(
      builder: (context, state) {
        return Column(
          children: items.asMap().entries.map((e) {
            return GestureDetector(
                onTap: () =>
                    context.read<DrawerCubit>().changeActiveIndex(e.key),
                child: context.read<DrawerCubit>().activeIndex == e.key
                    ? ActiveDrawerItem(drawerItemModel: items[e.key])
                    : InActiveDrawerItem(drawerItemModel: items[e.key]));
          }).toList(),
        );
      },
    );
  }
}
