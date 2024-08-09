import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TeamMemberTrailing extends StatelessWidget {
  const TeamMemberTrailing({super.key});

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
        fit: BoxFit.scaleDown,
        child:
            Icon(FontAwesomeIcons.ellipsisVertical, color: Color(0xffA3AED0)));
  }
}