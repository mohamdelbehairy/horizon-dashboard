import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';

import 'text_field_listview.dart';
import 'text_field_widget.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Text('Pages / Dashboard', style: Styles.medium14(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 2,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text('Main Dashboard',
                      textAlign: TextAlign.start,
                      style: Styles.bold34(context)),
                )),
            const SizedBox(width: 4),
            const TextFieldWidget()
          ],
        )
      ],
    );
  }
}
