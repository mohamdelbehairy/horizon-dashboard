import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import '../../../tables/presentation/widgets/custom_table_widget.dart';
import '../manager/top_creators/top_creators_cubit.dart';
import 'nft_marketplace_header.dart';

class TopCreatorsWidget extends StatelessWidget {
  const TopCreatorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var table = context.read<TopCreatorsCubit>();
    return CustomBackground(
      backgroundModel: BackgroundModel(
          top: 16,
          left: 16,
          right: 16,
          child: Column(
            children: [
              const NftMarketplaceHeader(text: 'Top Creators'),
              Container(
                child: CustomTableWidget(
                    tablesTitle: table.topCreatorsTitle,
                    tablesBody: table.topCreatorsBody),
              ),
            ],
          )),
    );
  }
}
