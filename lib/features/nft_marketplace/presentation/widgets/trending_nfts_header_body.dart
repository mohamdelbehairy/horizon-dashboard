import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class TrendingNftsHeaderBody extends StatelessWidget {
  const TrendingNftsHeaderBody({super.key});

  @override
  Widget build(BuildContext context) {
    List items = ['Art', 'Music', 'Collectibles', 'Sports'];
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Trending NFTs', style: Styles.bold24(context)),
          if (MediaQuery.sizeOf(context).width <= 800)
            const SizedBox(width: 64),
          Row(
            children: List.generate(items.length, (index) {
              return Container(
                height: 32,
                width: 70,
                decoration: BoxDecoration(
                    color: index == 0 ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(70)),
                child: Center(
                    child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(items[index],
                            style: Styles.medium14(context)
                                .copyWith(color: const Color(0xff4318FF))))),
              );
            }),
          )
        ],
      ),
    );
  }
}
