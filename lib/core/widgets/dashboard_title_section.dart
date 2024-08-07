import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../features/dashboard/presentation/widgets/text_field_widget.dart';

class DashboardTitleSection extends StatelessWidget {
  const DashboardTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            flex: 2,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text('Main Dashboard',
                  textAlign: TextAlign.start, style: Styles.bold34(context)),
            )),
        const SizedBox(width: 4),
        const TextFieldWidget(),
      ],
    );
  }
}
