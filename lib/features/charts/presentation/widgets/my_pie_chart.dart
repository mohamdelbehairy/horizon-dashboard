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
    return SizedBox(
      height: MediaQuery.sizeOf(context).width > 1635 ? 350 : 330,
      child: CustomBackground(
        right: MediaQuery.sizeOf(context).width > 1635 ? 32 : 12,
        left: MediaQuery.sizeOf(context).width > 1635 ? 32 : 12,
        child: const SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              PieChartHeader(),
              PieChartWidget(),
              PieChartInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
