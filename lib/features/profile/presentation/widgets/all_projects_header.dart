import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class AllProjectsHeader extends StatelessWidget {
  const AllProjectsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('All Projects', style: Styles.bold24(context)),
        const SizedBox(height: 12),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
              'Here you can find more details about your projects. Keep you\n user engaged by providing meaningful information.',
              style: Styles.regular12(context).copyWith(fontSize: 16)),
        ),
      ],
    );
  }
}
