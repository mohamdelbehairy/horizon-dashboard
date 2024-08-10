import 'package:flutter/material.dart';
import 'package:horizon/core/utils/assets.dart';

import '../../../dashboard/data/models/main_dashboard_item_model.dart';
import 'main_dashboard_item.dart';

class MainDashboardListView extends StatelessWidget {
  const MainDashboardListView({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      MainDashboardItemModel(
          image: Assets.imagesTables, title: 'Earnings', subtitle1: r'$350.4'),
      MainDashboardItemModel(
          image: Assets.imagesDoller,
          title: 'Spend this month',
          subtitle1: r'$642.39'),
      MainDashboardItemModel(
          title: 'Sales',
          subtitle1: r'$574.34',
          subtitle2: '+23%',
          subtitle3: 'since last month'),
      MainDashboardItemModel(
          title: 'Your balance',
          subtitle1: r'$1,000',
          trailing: IntrinsicWidth(
            child: Row(
              children: [
                Image.asset(Assets.imagesAmerica,
                    fit: BoxFit.scaleDown, height: 45),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Transform.rotate(
                      angle: -90 * 3.14 / 180,
                      child: const Icon(Icons.arrow_back_ios,
                          color: Color(0xffA3AED0), size: 15)),
                ),
              ],
            ),
          )),
      MainDashboardItemModel(
          index: 4,
          image: Assets.imagesNewTask,
          title: 'New Tasks',
          subtitle1: '154'),
      MainDashboardItemModel(
          image: Assets.imagesFiles,
          title: 'Total Projects',
          subtitle1: '2935'),
    ];

    return SizedBox(
      height: 97,
      child: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.sizeOf(context).width < 800 ? 12 : 0.0),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child:
                      MainDashboardItem(mainDashboardItemModel: items[index]));
            }),
      ),
    );
  }
}
