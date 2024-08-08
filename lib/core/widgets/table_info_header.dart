import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class TableInfoHeader extends StatelessWidget {
  const TableInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text('NAME', style: Styles.medium14(context))),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('PROGRESS', style: Styles.medium14(context)),
              Text('QUANTITY', style: Styles.medium14(context)),
              Text('DATE', style: Styles.medium14(context)),
            ],
          ),
        ),
      ],
    );
  }
}
