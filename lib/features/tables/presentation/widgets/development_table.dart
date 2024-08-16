import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:horizon/core/models/background_header_model.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/core/widgets/custom_background_header.dart';

import 'custom_table_widget.dart';

class DevelopmentTable extends StatelessWidget {
  const DevelopmentTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBackgroundHeader(
              backgroundHeaderModel: BackgroundHeaderModel(
                  title: 'Development Table',
                  child: const Icon(FontAwesomeIcons.ellipsis,
                      color: Color(0xff4318FF)))),
          const SizedBox(height: 16),
          const CustomTableWidget(),
        ],
      )),
    );
  }
}
