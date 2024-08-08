import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'bussiness_design_body_text.dart';
import 'bussiness_design_bottom_widget.dart';
import 'bussiness_design_header.dart';

class BussinessDesign extends StatelessWidget {
  const BussinessDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
        right: 0.0,
        left: 0.0,
        bottom: 0.0,
        child: Column(
          children: [
            BussinessDesignHeader(),
            SizedBox(height: 64),
            BussinessDesignBodyText(),
            Spacer(),
            BussinessDesignBottomWidget()
          ],
        ));
  }
}
