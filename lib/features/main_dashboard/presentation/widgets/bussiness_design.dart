import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'bussiness_design_body_text.dart';
import 'bussiness_design_bottom_widget.dart';
import 'bussiness_design_header.dart';

class BussinessDesign extends StatelessWidget {
  const BussinessDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).width > 1600 ? 345 : 345,
      child: const CustomBackground(
          right: 0.0,
          left: 0.0,
          bottom: 0.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BussinessDesignHeader(),
              SizedBox(height: 52),
              BussinessDesignBodyText(),
              // if (MediaQuery.sizeOf(context).width > 1600)
              Spacer(),
              // if (MediaQuery.sizeOf(context).width < 1600)
              //   const SizedBox(height: 16),
              BussinessDesignBottomWidget()
            ],
          )),
    );
  }
}
