import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/dashboard_title_section.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text('Pages / $title', style: Styles.medium14(context)),
        DashboardTitleSection(title: title),
      ],
    );
  }
}
