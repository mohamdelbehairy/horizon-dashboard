import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../data/models/pie_chart_info_model.dart';

class PieChartInfoItem extends StatelessWidget {
  const PieChartInfoItem({super.key, required this.pieChartInfoModel});
  final PieChartInfoModel pieChartInfoModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(radius: 4, backgroundColor: pieChartInfoModel.color),
            const SizedBox(width: 4),
            Text(pieChartInfoModel.name, style: Styles.medium12(context)),
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(pieChartInfoModel.value,
                style: Styles.bold16(context).copyWith(fontSize: 18)))
      ],
    );
  }
}
