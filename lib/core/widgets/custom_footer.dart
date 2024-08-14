import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/footer_right_widget.dart';

import '../../features/login/presentation/widgets/copy_right_widget.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: DesktopOrTabletCopyRightWidget(
                  mainAxisAlignment: MainAxisAlignment.start),
            )),
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 50), child: FooterRightWidget()))
      ],
    );
  }
}
