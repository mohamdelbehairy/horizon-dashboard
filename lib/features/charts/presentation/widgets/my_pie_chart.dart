import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/features/charts/presentation/widgets/pie_chart_widget.dart';

import 'pie_chart_header.dart';
import 'pie_chart_info.dart';

class MyPieChart extends StatelessWidget {
  const MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Column(
        children: [
          PieChartHeader(),
          PieChartWidget(),
          PieChartInfo(),
        ],
      ),
    );
  }
}

