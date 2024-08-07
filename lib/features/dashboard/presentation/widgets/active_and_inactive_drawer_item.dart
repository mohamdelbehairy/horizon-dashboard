import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:horizon/features/dashboard/data/models/drawer_item_model.dart';

import '../../../../core/utils/styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(right: 0, left: 20),
      leading: SvgPicture.asset(drawerItemModel.image,
          colorFilter:
              const ColorFilter.mode(Color(0xff4318FF), BlendMode.srcIn)),
      title: Text(drawerItemModel.title, style: Styles.bold16(context)),
      trailing: Container(
          height: 36,
          width: 4,
          decoration: BoxDecoration(
              color: const Color(0xff4318FF),
              borderRadius: BorderRadius.circular(25))),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.only(right: 0, left: 20),
        leading: SvgPicture.asset(drawerItemModel.image,
            colorFilter:
                const ColorFilter.mode(Color(0xffA3AED0), BlendMode.srcIn)),
        title: Text(drawerItemModel.title, style: Styles.medium16(context)));
  }
}
