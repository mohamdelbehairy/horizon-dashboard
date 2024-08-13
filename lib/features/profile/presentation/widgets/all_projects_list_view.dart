import 'package:flutter/material.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/features/profile/data/models/all_prokect_list_tile_model.dart';
import 'package:horizon/features/profile/presentation/widgets/all_project_list_tile.dart';

class AllProjectsListView extends StatelessWidget {
  const AllProjectsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      AllProkectListTileModel(
          title: 'Technology behind the Blockchain',
          subtitle: 'Project #1',
          image: Assets.imagesTechnology),
      AllProkectListTileModel(
          title: 'Greatest way to a good Economy',
          subtitle: 'Project #2',
          image: Assets.imagesGreatest),
      AllProkectListTileModel(
          title: 'Most essential tips for Burnout',
          subtitle: 'Project #3',
          image: Assets.imagesMostEssential),
    ];
    return Column(
      children: List.generate(
          items.length,
          (index) =>
              AllProjectsListTile(allProkectListTileModel: items[index])),
    );
  }
}
