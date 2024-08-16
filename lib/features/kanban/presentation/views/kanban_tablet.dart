import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_footer.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_scroll_view_dashboard.dart';
import 'widgets/backlog_widget.dart';
import 'widgets/done_widget.dart';
import 'widgets/inprogress_widget.dart';

class KanbanTablet extends StatelessWidget {
  const KanbanTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollViewDashboard(
      children: [
        CustomAppBar(title: 'Kanban'),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: BacklogWidget()),
            SizedBox(width: 16),
            Expanded(child: InProgressWidget()),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: DoneWidget()),
            SizedBox(width: 16),
            Expanded(child: SizedBox()),
          ],
        ),
        SizedBox(height: 16),
        Expanded(child: CustomFooter()),
        SizedBox(height: 16),
      ],
    );
  }
}
