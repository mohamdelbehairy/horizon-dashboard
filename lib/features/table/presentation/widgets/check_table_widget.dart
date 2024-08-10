import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'check_table_small_mobile_and_default_ui.dart';

class CheckTableWidget extends StatelessWidget {
  const CheckTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          height: MediaQuery.sizeOf(context).width > 1635 ? 350 : 330,
          bottom: 0.0,
          child: MediaQuery.sizeOf(context).width < 365
              ? const CheckTableSmallMobile()
              : const CheckTableDefaultUI()),
    );
  }
}

