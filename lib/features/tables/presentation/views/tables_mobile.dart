import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../login/presentation/widgets/copy_right_widget.dart';
import '../widgets/check_check_table.dart';
import '../widgets/complex_complex_table.dart';
import '../widgets/development_table.dart';
import '../widgets/four_column_table.dart';

class TablesMobile extends StatelessWidget {
  const TablesMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(title: 'Tables'),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              DevelopmentTable(),
              SizedBox(height: 16),
              CheckCheckTable(),
              SizedBox(height: 16),
              FourColumnTable(),
              SizedBox(height: 16),
              ComplexComplexTable(),
              SizedBox(height: 32),
              MobileCopyRightWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
