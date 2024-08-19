import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import '../../../tables/presentation/widgets/custom_table_widget.dart';
import '../manager/top_creators_and_history/top_creators_and_history_cubit.dart';
import 'nft_marketplace_header.dart';

class TopCreatorsWidget extends StatelessWidget {
  const TopCreatorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var table = context.read<TopCreatorsAndHistoryCubit>();
    return CustomBackground(
      backgroundModel: BackgroundModel(
          top: 16,
          left: 16,
          right: 16,
          child: Column(
            children: [
              const NftMarketplaceHeader(text: 'Top Creators'),
              CustomTableWidget(
                  tablesTitle: table.topCreatorsTitle,
                  tablesBody: table.topCreatorsBody),
            ],
          )),
    );
  }
}
