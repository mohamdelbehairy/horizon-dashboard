import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/models/background_header_model.dart';
import '../../../../core/widgets/custom_background_header.dart';
import 'complex_table_info.dart';

class ComplexTableSmallMobile extends StatelessWidget {
  const ComplexTableSmallMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBackgroundHeader(
            backgroundHeaderModel: BackgroundHeaderModel(
                title: 'Complex Table',
                child: const Icon(FontAwesomeIcons.ellipsis,
                    color: Color(0xff4318FF)))),
        const SizedBox(height: 24),
        const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              ComplexTableInfo(),
            ],
          ),
        ),
      ],
    );
  }
}

class CoplexTableDefaultUI extends StatelessWidget {
  const CoplexTableDefaultUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
