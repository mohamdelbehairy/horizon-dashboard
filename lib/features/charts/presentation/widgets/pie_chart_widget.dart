import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:horizon/features/charts/data/models/pie_chart_data_model.dart';

import 'pie_chart_section_data_item.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({super.key});

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 345 / 1.5,
      child: PieChart(pieChartData()),
    );
  }

  PieChartData pieChartData() {
    return PieChartData(
      centerSpaceRadius: 0.0,
      sectionsSpace: 0.0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        pieChartSectionDataItem(
            pieChartDataModel: PieChartDataModel(
                index: 0,
                value: 63,
                color: const Color(0xff4318FF),
                activeIndex: activeIndex)),
        pieChartSectionDataItem(
            pieChartDataModel: PieChartDataModel(
                index: 1,
                value: 12,
                color: const Color(0xffEFF4FB),
                activeIndex: activeIndex)),
        pieChartSectionDataItem(
            pieChartDataModel: PieChartDataModel(
                index: 2,
                value: 25,
                color: const Color(0xff6AD2FF),
                activeIndex: activeIndex)),
      ],
    );
  }
}
