import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/features/profile/presentation/views/widgets/profile_header.dart';

import 'general_information_grid_view.dart';

class GeneralInformation extends StatelessWidget {
  const GeneralInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
        backgroundModel: BackgroundModel(
            height: MediaQuery.sizeOf(context).width > 1600 ? 500 : 480,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileHeader(
                    title: 'General Information',
                    subTitle:
                        'As we live, our hearts turn colder. Cause pain is what we go through as we\n become older. We get insulted by others, lose trust for those others. We get\n back stabbed by friends. It becomes harder for us to give others a hand. We\n get our heart broken by people we love, even that we give them all...'),
                SizedBox(height: 16),
                Expanded(child: GeneralInformationGrideView())
              ],
            )));
  }
}

