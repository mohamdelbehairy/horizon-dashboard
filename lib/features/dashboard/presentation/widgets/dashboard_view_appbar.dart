import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_field.dart';
import 'text_field_listview.dart';

AppBar dashboardViewAppBar(GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
      backgroundColor: const Color(0xfff4f7fe),
      elevation: 0.0,
      title: Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(60)),
        child: const Row(
          children: [
            Expanded(child: CustomTextField()),
            Expanded(child: TextFieldListView()),
          ],
        ),
      ),
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu, color: Color(0xffA3AED0), size: 25)));
}
  // const TextFieldWidget()