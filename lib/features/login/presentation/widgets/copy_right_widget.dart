import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class DesktopOrTabletCopyRightWidget extends StatelessWidget {
  const DesktopOrTabletCopyRightWidget(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.center});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
                '© 2022 Horizon UI. All Rights Reserved. Made with love by ',
                style: Styles.medium14(context))),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Simmmple!',
              style: Styles.bold14(context)
                  .copyWith(color: const Color(0xffA3AED0))),
        )
      ],
    );
  }
}

class MobileCopyRightWidget extends StatelessWidget {
  const MobileCopyRightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
                '© 2022 Horizon UI. All Rights Reserved. Made with love by ',
                style: Styles.medium14(context)),
          ),
        ),
        Flexible(
          child: Text('Simmmple!',
              style: Styles.bold14(context)
                  .copyWith(color: const Color(0xffA3AED0))),
        )
      ],
    );
  }
}
