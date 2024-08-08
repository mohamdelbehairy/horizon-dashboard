import 'package:fl_chart/fl_chart.dart';

import '../../data/models/pie_chart_data_model.dart';

PieChartSectionData pieChartSectionDataItem(
    {required PieChartDataModel pieChartDataModel}) {
  return PieChartSectionData(
      showTitle: pieChartDataModel.showTitle,
      radius: pieChartDataModel.activeIndex == pieChartDataModel.index
          ? 90
          : pieChartDataModel.radius,
      value: pieChartDataModel.value,
      color: pieChartDataModel.color);
}
