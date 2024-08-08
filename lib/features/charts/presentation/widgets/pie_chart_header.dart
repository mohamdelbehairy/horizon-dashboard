import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class PieChartHeader extends StatelessWidget {
  const PieChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('Your Pie Chart', style: Styles.bold16(context))),
        const SizedBox(width: 8),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                Text('Monthly',
                    style: Styles.bold12(context)
                        .copyWith(color: const Color(0xffA3AED0))),
                const Icon(Icons.arrow_drop_down,
                    color: Color(0xffA3AED0), size: 20)
              ],
            ),
          ),
        )
      ],
    );
  }
}
