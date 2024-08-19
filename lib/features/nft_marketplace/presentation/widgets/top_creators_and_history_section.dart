import 'package:flutter/material.dart';
import 'history_widget.dart';
import 'top_creators_widget.dart';

class TopCreatorsAndHistorySection extends StatelessWidget {
  const TopCreatorsAndHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopCreatorsWidget(),
        SizedBox(height: 16),
        HistoryWidget(),
      ],
    );
  }
}
