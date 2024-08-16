import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_background_header.dart';

import '../../../../../core/models/background_header_model.dart';

class KanbanHeader extends StatelessWidget {
  const KanbanHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundHeader(
        backgroundHeaderModel: BackgroundHeaderModel(
            title: text,
            child: const Icon(Icons.add, color: Color(0xff4318FF))));
  }
}
