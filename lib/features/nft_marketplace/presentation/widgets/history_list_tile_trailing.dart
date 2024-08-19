import 'package:flutter/material.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../../../core/models/svg_model.dart';
import '../../../../core/widgets/custom_svg_picture.dart';
import '../../data/models/history_model.dart';

class HistoryListTileTraling extends StatelessWidget {
  const HistoryListTileTraling({super.key, required this.historyModel});
  final HistoryModel historyModel;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Row(
        children: [
          Flexible(
            child: Row(
              children: [
                CustomSvgPicture(
                    svg: SvgModel(
                        image: Assets.imagesDoubleRectangle,
                        fit: BoxFit.scaleDown)),
                const SizedBox(width: 4),
                FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(historyModel.trailingText1,
                        style: Styles.bold16(context))),
                const SizedBox(width: 8),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(historyModel.trailingText2,
                      style: Styles.regular12(context)),
                )
              ],
            ),
          ),
          if (MediaQuery.sizeOf(context).width > 800) const SizedBox(width: 12),
        ],
      ),
    );
  }
}
