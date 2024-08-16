import 'package:flutter/material.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/features/profile/data/models/profile_list_tile_model.dart';
import 'package:horizon/features/profile/presentation/views/widgets/all_project_list_tile.dart';

class AllProjectsListView extends StatelessWidget {
  const AllProjectsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      ProfileListTileModel(
          title: 'Technology behind the Blockchain',
          subtitle: 'Project #1',
          image: Assets.imagesTechnology),
      ProfileListTileModel(
          title: 'Greatest way to a good Economy',
          subtitle: 'Project #2',
          image: Assets.imagesGreatest),
      ProfileListTileModel(
          title: 'Most essential tips for Burnout',
          subtitle: 'Project #3',
          image: Assets.imagesMostEssential),
    ];
    return Column(
      children: List.generate(
          items.length,
          (index) => Padding(
              padding: const EdgeInsets.only(top: 12),
              child:
                  AllProjectsListTile(allProkectListTileModel: items[index]))),
    );
  }
}
