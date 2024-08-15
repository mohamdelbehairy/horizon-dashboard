import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class KanbanItemTitle extends StatelessWidget {
  const KanbanItemTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(title,
                  style: Styles.bold16(context).copyWith(fontSize: 18))),
        ),
        const SizedBox(width: 24),
        const Icon(Icons.edit, color: Color(0xffA3AED0), size: 18)
      ],
    );
  }
}
