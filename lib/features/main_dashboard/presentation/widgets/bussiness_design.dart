import 'package:flutter/material.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'bussiness_design_body_text.dart';
import 'bussiness_design_bottom_widget.dart';
import 'bussiness_design_header.dart';

class BussinessDesign extends StatelessWidget {
  const BussinessDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          right: 0.0,
          left: 0.0,
          bottom: 0.0,
          height: MediaQuery.sizeOf(context).width > 1600 ? 345 : 345,
          child: CustomScrollView(
            // physics: NeverScrollableScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BussinessDesignHeader(),
                    if (MediaQuery.sizeOf(context).width > 1400)
                      const SizedBox(height: 52),
                    if (MediaQuery.sizeOf(context).width < 1400)
                      const SizedBox(height: 30),
                    const BussinessDesignBodyText(),
                    const Spacer(),
                    const BussinessDesignBottomWidget()
                  ],
                ),
              )
            ],
          )),
    );
  }
}
