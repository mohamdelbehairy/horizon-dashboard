import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.title, required this.subTitle});
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Styles.bold24(context)),
        const SizedBox(height: 12),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(subTitle,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: Styles.regular12(context).copyWith(fontSize: 16)),
        ),
      ],
    );
  }
}
