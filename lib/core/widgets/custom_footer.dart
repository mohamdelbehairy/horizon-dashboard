import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/core/widgets/footer_right_widget.dart';

import '../../features/login/presentation/widgets/copy_right_widget.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: MediaQuery.sizeOf(context).width < 980
                  ? const MobileCopyRightWidget(
                      mainAxisAlignment: MainAxisAlignment.start)
                  : const DesktopOrTabletCopyRightWidget(
                      mainAxisAlignment: MainAxisAlignment.start),
            )),
        const Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 50), child: FooterRightWidget()))
      ],
    );
  }
}
