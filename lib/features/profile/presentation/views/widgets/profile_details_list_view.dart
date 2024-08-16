import 'package:flutter/material.dart';

import '../../../data/models/profile_detail_model.dart';
import 'profile_details_model.dart';

class ProfileDetailsListView extends StatelessWidget {
  const ProfileDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      ProfileDetailModel(title: '17', value: 'Posts'),
      ProfileDetailModel(title: '9.7k', value: 'Followers'),
      ProfileDetailModel(title: '274', value: 'Followers'),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(items.length,
          (index) => ProfileDetailsItem(profileDetailModel: items[index])),
    );
  }
}
