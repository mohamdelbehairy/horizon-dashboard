import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/styles.dart';
import '../manager/trending_and_recently/trending_and_recently_cubit.dart';
import 'trending_and_recently_list_view.dart';

class RecentlyAddedWidget extends StatelessWidget {
  const RecentlyAddedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text('Recently Added', style: Styles.bold24(context))),
        const SizedBox(height: 16),
        TrendingAndRecentlyListView(
            items: BlocProvider.of<TrendingAndRecentlyCubit>(context)
                .recentlyAdded),
      ],
    );
  }
}
