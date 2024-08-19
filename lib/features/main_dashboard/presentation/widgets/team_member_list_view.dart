import 'package:flutter/material.dart';
import 'package:horizon/core/utils/assets.dart';

import '../../data/models/team_member_model.dart';
import 'team_member_widget.dart';

class TeamMemberListView extends StatelessWidget {
  const TeamMemberListView({super.key});

  @override
  Widget build(BuildContext context) {
    List item = [
      TeamMemberModel(
          title: 'Adela Parkson',
          subTitle: 'Creative Director',
          image: Assets.imagesAdela),
      TeamMemberModel(
          title: 'Christian Mad',
          subTitle: 'Product Designer',
          image: Assets.imagesChristian),
      TeamMemberModel(
          title: 'Jason Statham',
          subTitle: 'Junior Graphic Designer',
          image: Assets.imagesJason),
    ];
    return Column(
      children: List.generate(
          item.length,
          (index) => TeamMemberWidget(teamMemberModel: item[index])),
    );
  }
}
