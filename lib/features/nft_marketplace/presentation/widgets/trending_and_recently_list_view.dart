import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/trending_and_recently_model.dart';
import '../manager/trending_and_recently/trending_and_recently_cubit.dart';
import 'trending_and_recently_item.dart';

class TrendingAndRecentlyListView extends StatelessWidget {
  const TrendingAndRecentlyListView({super.key, required this.items});
  final List<TrendingAndRecentlyModel> items;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingAndRecentlyCubit, TrendingAndRecentlyState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(items.length, (index) {
              return IntrinsicWidth(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0.0),
                    child: TrendingAndRecentlyItem(
                        items: items[index], index: index)),
              );
            }),
          ),
        );
      },
    );
  }
}
