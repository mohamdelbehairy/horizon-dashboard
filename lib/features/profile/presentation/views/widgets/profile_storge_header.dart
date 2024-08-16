import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:horizon/core/widgets/header_right_item.dart';

class ProfileStorgeHeader extends StatelessWidget {
  const ProfileStorgeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.centerRight,
        child: HeaderRightItem(
            child: Icon(FontAwesomeIcons.ellipsis, color: Color(0xff4318FF))));
  }
}
