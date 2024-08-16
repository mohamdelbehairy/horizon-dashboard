import 'package:flutter/material.dart';
import 'package:horizon/features/profile/data/models/profile_list_tile_model.dart';

import 'general_information_item.dart';

class GeneralInformationGrideView extends StatelessWidget {
  const GeneralInformationGrideView({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      ProfileListTileModel(title: 'Education', subtitle: 'Stanford University'),
      ProfileListTileModel(
          title: 'Languages', subtitle: 'English, Spanish, Italian'),
      ProfileListTileModel(title: 'Department', subtitle: 'Product Design'),
      ProfileListTileModel(title: 'Work History', subtitle: 'Google, Facebook'),
      ProfileListTileModel(title: 'Organization', subtitle: 'Simmmple Web LLC'),
      ProfileListTileModel(title: 'Birthday', subtitle: '20 July 1986'),
    ];
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 100,
          mainAxisSpacing: 2,
          crossAxisSpacing: 24),
      itemBuilder: (context, index) {
        return GeneralInformationItem(profileListTileModel: items[index]);
      },
    );
  }
}
