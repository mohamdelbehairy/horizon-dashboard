import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../features/dashboard/presentation/widgets/text_field_widget.dart';

class DashboardTitleSection extends StatelessWidget {
  const DashboardTitleSection({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            flex: MediaQuery.sizeOf(context).width > 1200 ? 2 : 1,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(title == 'Dashboard'? 'Main Dashboard':title,
                  textAlign: TextAlign.start, style: Styles.bold34(context)),
            )),
        const SizedBox(width: 4),
        const TextFieldWidget(),
      ],
    );
  }
}
