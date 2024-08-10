import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:horizon/core/models/background_model.dart';

import '../../../../core/models/background_header_model.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../core/widgets/custom_background_header.dart';
import 'complex_table_info.dart';

class ComplexTableWidget extends StatelessWidget {
  const ComplexTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          height: MediaQuery.sizeOf(context).width > 1635 ? 350 : 330,
          bottom: 0.0,
          child: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                CustomBackgroundHeader(
                    backgroundHeaderModel: BackgroundHeaderModel(
                        title: 'Complex Table',
                        child: const Icon(FontAwesomeIcons.ellipsis,
                            color: Color(0xff4318FF)))),
                const SizedBox(height: 24),
                const ComplexTableInfo(),
              ],
            ),
          )),
    );
  }
}
