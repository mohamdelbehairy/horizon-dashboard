import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class BarChartListTile extends StatelessWidget {
  const BarChartListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 0.0,
      minTileHeight: 0.0,
      minVerticalPadding: 0.0,
      title: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Daily Traffic', style: Styles.medium14(context)),
            Row(
              children: [
                const Icon(Icons.arrow_drop_up,
                    color: Color(0xff05CD99), size: 20),
                const SizedBox(width: 2),
                Text('+2.45%', style: Styles.bold12(context))
              ],
            )
          ],
        ),
      ),
      subtitle: Row(
        children: [
          Text('2.579', style: Styles.bold34(context)),
          const SizedBox(width: 4),
          Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text('Visitors', style: Styles.medium14(context)))
        ],
      ),
    );
  }
}
