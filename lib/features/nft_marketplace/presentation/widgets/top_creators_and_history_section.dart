import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'top_creators_widget.dart';

class TopCreatorsAndHistorySection extends StatelessWidget {
  const TopCreatorsAndHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopCreatorsWidget(),
        const SizedBox(height: 16),
        CustomBackground(
            backgroundModel: BackgroundModel(child: const SizedBox()))
      ],
    );
  }
}
