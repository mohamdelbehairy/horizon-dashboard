import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_card.dart';
import 'package:horizon/features/profile/data/models/profile_list_tile_model.dart';

class GeneralInformationItem extends StatelessWidget {
  const GeneralInformationItem({super.key, required this.profileListTileModel});
  final ProfileListTileModel profileListTileModel;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListTile(
            title: Text(profileListTileModel.title,
                style: Styles.medium14(context)),
            subtitle: MediaQuery.sizeOf(context).width >= 1300 ||
                    MediaQuery.sizeOf(context).width <= 800
                ? FittedBox(
                    child: Text(profileListTileModel.subtitle!,
                        style: Styles.bold16(context)
                            .copyWith(fontWeight: FontWeight.w400)))
                : Text(profileListTileModel.subtitle!,
                    style: Styles.bold16(context)
                        .copyWith(fontWeight: FontWeight.w400))),
      ),
    );
  }
}
