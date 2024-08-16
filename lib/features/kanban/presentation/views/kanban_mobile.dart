import 'package:flutter/cupertino.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../login/presentation/widgets/copy_right_widget.dart';
import '../widgets/backlog_widget.dart';
import '../widgets/done_widget.dart';
import '../widgets/inprogress_widget.dart';

class KanbanMobile extends StatelessWidget {
  const KanbanMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(title: 'Kanban'),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              BacklogWidget(),
              SizedBox(height: 16),
              InProgressWidget(),
              SizedBox(height: 16),
              DoneWidget(),
            ],
          ),
        ),
        SizedBox(height: 16),
        MobileCopyRightWidget()
      ],
    );
  }
}
