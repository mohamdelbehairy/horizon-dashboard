import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/features/profile/data/models/profile_detail_model.dart';

class ProfileDetailsItem extends StatelessWidget {
  const ProfileDetailsItem({super.key, required this.profileDetailModel});
  final ProfileDetailModel profileDetailModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(profileDetailModel.title, style: Styles.bold24(context)),
        Text(profileDetailModel.value,
            style: Styles.regular14(context)
                .copyWith(color: const Color(0xffA3AED0))),
      ],
    );
  }
}
