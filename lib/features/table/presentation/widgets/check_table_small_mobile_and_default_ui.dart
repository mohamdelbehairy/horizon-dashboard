import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:horizon/core/models/background_header_model.dart';
import 'package:horizon/core/widgets/custom_background_header.dart';

import 'check_table_info.dart';

class CheckTableSmallMobile extends StatelessWidget {
  const CheckTableSmallMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomBackgroundHeader(
            backgroundHeaderModel: BackgroundHeaderModel(
                title: 'Check Table',
                child: const Icon(FontAwesomeIcons.ellipsis,
                    color: Color(0xff4318FF)))),
        const SizedBox(height: 24),
        const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Column(children: [
            CheckTableInfo(),
          ]),
        )
      ],
    );
  }
}

class CheckTableDefaultUI extends StatelessWidget {
  const CheckTableDefaultUI({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackgroundHeader(
                  backgroundHeaderModel: BackgroundHeaderModel(
                      title: 'Check Table',
                      child: const Icon(FontAwesomeIcons.ellipsis,
                          color: Color(0xff4318FF)))),
              const SizedBox(height: 24),
              const CheckTableInfo(),
            ],
          ),
        )
      ],
    );
  }
}
