import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/core/models/background_model.dart';

import '../../../../core/widgets/custom_background.dart';
import 'complex_table_small_mobile_and_default_ui.dart';

class ComplexTableWidget extends StatelessWidget {
  const ComplexTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          height: MediaQuery.sizeOf(context).width > 1635 ? 350 : 330,
          bottom: 0.0,
          child: MediaQuery.sizeOf(context).width < 365
              ? const ComplexTableSmallMobile()
              : const CoplexTableDefaultUI()),
    );
  }
}
