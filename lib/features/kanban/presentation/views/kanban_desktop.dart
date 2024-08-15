import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/features/kanban/presentation/widgets/inprogress_widget.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_footer.dart';
import '../../../../core/widgets/custom_scroll_view_dashboard.dart';
import '../widgets/backlog_widget.dart';
import '../widgets/done_widget.dart';

class KanbanDesktop extends StatelessWidget {
  const KanbanDesktop({super.key});

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
            SizedBox(width: 16),
            Expanded(child: DoneWidget()),
          ],
        ),
        SizedBox(height: 24),
        Expanded(child: CustomFooter()),
        SizedBox(height: 16),
      ],
    );
  }
}
