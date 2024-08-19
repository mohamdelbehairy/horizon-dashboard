import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class NftMarketplaceHeader extends StatelessWidget {
  const NftMarketplaceHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Styles.bold20(context)
                .copyWith(color: const Color(0xff1B2559))),
        Container(
          height: 32,
          width: 78,
          decoration: BoxDecoration(
              color: const Color(0xffF4F7FE),
              borderRadius: BorderRadius.circular(70)),
          child: Center(
            child: Text('See all',
                style: Styles.medium14(context)
                    .copyWith(color: const Color(0xff4318FF))),
          ),
        )
      ],
    );
  }
}
