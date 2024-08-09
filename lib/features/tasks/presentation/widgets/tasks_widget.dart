import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/core/widgets/custom_select_item.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

import 'tasks_header.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      'Landing Page Design',
      'Dashboard Builder',
      'Mobile App Design',
      'Illustrations',
      'Promotional LP'
    ];
    return SizedBox(
      height: MediaQuery.sizeOf(context).width > 1635 ? 350 : 330,
      child: CustomBackground(
          right: MediaQuery.sizeOf(context).width > 1400 ? 32 : 16,
          left: MediaQuery.sizeOf(context).width > 1400 ? 32 : 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TasksHeader(),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(items.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                              child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: CustomSelectItem(text: items[index]))),
                          const SizedBox(width: 8),
                          CustomSvgPicture(
                              svg: SvgModel(
                                  image: Assets.imagesTaskIcon,
                                  fit: BoxFit.scaleDown))
                        ],
                      ),
                    );
                  }),
                ),
              )
            ],
          )),
    );
  }
}
