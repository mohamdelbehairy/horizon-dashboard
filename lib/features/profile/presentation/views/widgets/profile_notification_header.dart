import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:horizon/core/models/background_header_model.dart';
import 'package:horizon/core/widgets/custom_background_header.dart';

class ProfileNotificationHeader extends StatelessWidget {
  const ProfileNotificationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width > 1635 ? 32 : 16),
      child: CustomBackgroundHeader(
          backgroundHeaderModel: BackgroundHeaderModel(
              title: 'Notifications',
              child: const Icon(FontAwesomeIcons.ellipsis,
                  color: Color(0xff4318FF)))),
    );
  }
}
