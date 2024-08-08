import 'package:flutter/material.dart';

import '../../data/models/pie_chart_info_model.dart';
import 'pie_chart_info_item.dart';

class PieChartInfo extends StatelessWidget {
  const PieChartInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PieChartInfoItem(
            pieChartInfoModel: PieChartInfoModel(
                name: 'Your files',
                value: '63%',
                color: const Color(0xff4318FF))),
        PieChartInfoItem(
            pieChartInfoModel: PieChartInfoModel(
                name: 'System', value: '25%', color: const Color(0xff6AD2FF))),
      ],
    );
  }
}
