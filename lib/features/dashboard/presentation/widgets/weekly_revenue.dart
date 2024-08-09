import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'item_table.dart';

class WeeklyRevenue extends StatelessWidget {
  const WeeklyRevenue({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          height: MediaQuery.sizeOf(context).width > 1635 ? 350 : 300,
          right: 16,
          left: 16,
          
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Weekly Revenue', style: Styles.bold24(context)),
                  const ItemTable(),
                ],
              ),
              const Spacer(),
              Image.asset(Assets.imagesBarChart, fit: BoxFit.scaleDown)
            ],
          )),
    );
  }
}
