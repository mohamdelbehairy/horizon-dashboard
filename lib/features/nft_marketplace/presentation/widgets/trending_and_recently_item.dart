import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import '../../data/models/trending_and_recently_model.dart';

class TrendingAndRecentlyItem extends StatelessWidget {
  const TrendingAndRecentlyItem(
      {super.key, required this.items, required this.index});
  final TrendingAndRecentlyModel items;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        right: 16,
        left: 16,
        top: 16,
        bottom: MediaQuery.sizeOf(context).width < 1200 ? 0.0 : 16,
        height: MediaQuery.sizeOf(context).width < 1200 ? 360 : 350,
        child: Column(
          children: [
            Image.asset(items.backgroundImage, height: 205),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ListTile(
                horizontalTitleGap: 0.0,
                contentPadding: EdgeInsets.zero,
                title: Text(items.title, style: Styles.bold18(context)),
                subtitle: Text(items.subtitle,
                    style: Styles.regular14(context)
                        .copyWith(color: const Color(0xffA3AED0))),
                trailing: Image.asset(items.trailing),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 4, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                      child: Text(
                    items.current,
                    style: Styles.bold14(context)
                        .copyWith(color: const Color(0xff4318FF)),
                  )),
                  const SizedBox(width: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: MaterialButton(
                        height: 40,
                        minWidth: 106,
                        color: const Color(0xff11047A),
                        onPressed: () {},
                        child: Text('Place Bid',
                            style: Styles.medium14(context)
                                .copyWith(color: Colors.white))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
