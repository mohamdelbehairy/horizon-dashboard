import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/dashboard_title_section.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width < 800 ? 16 : 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (MediaQuery.sizeOf(context).width > 800)
            const SizedBox(height: 30),
          if (MediaQuery.sizeOf(context).width > 800)
            Text('Pages / $title', style: Styles.medium14(context)),
          DashboardTitleSection(title: title),
        ],
      ),
    );
  }
}
