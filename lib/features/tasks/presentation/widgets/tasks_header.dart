import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_select_item.dart';
import 'package:horizon/core/widgets/header_right_item.dart';

class TasksHeader extends StatelessWidget {
  const TasksHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xffEFF4FB),
                    child: Center(child: CustomSelectItem())),
                SizedBox(
                    width: MediaQuery.sizeOf(context).width > 1400 ? 12 : 8),
                Text('Tasks',
                    style: Styles.bold16(context).copyWith(fontSize: 18))
              ],
            ),
          ),
        ),
        // Expanded(
        //   child: ListTile(
        //     contentPadding: EdgeInsets.zero,
        //     minLeadingWidth: 0.0,
        //     minTileHeight: 0.0,
        //     minVerticalPadding: 0.0,
        //     leading: const CircleAvatar(
        //         radius: 22,
        //         backgroundColor: Color(0xffEFF4FB),
        //         child: Center(child: CustomSelectItem())),
        //     title: Text('Tasks',
        //         style: Styles.bold16(context).copyWith(fontSize: 18)),
        //   ),
        // ),
        const HeaderRightItem(
            child: Icon(FontAwesomeIcons.ellipsis, color: Color(0xff4318FF)))
      ],
    );
  }
}
