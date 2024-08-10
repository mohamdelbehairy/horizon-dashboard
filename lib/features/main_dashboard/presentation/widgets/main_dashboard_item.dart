import 'package:flutter/material.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/core/widgets/custom_svg_picture.dart';

import '../../../dashboard/data/models/main_dashboard_item_model.dart';

class MainDashboardItem extends StatelessWidget {
  const MainDashboardItem({super.key, required this.mainDashboardItemModel});
  final MainDashboardItemModel mainDashboardItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,
      width: 248,
      padding: EdgeInsets.symmetric(
          vertical: mainDashboardItemModel.subtitle2 != null &&
                  MediaQuery.sizeOf(context).width < 1200
              ? 0.0
              : 8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: ListTile(
          leading: mainDashboardItemModel.image != null
              ? mainDashboardItemModel.index != 4
                  ? FittedBox(
                      fit: BoxFit.scaleDown,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xffF4F7FE),
                        child: CustomSvgPicture(
                            svg: SvgModel(
                                image: mainDashboardItemModel.image!,
                                color: const Color(0xff4318FF))),
                      ),
                    )
                  : CustomSvgPicture(
                      svg: SvgModel(
                          image: mainDashboardItemModel.image!,
                          fit: BoxFit.scaleDown))
              : null,
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(mainDashboardItemModel.title,
                      style: Styles.medium14(context))),
            ],
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(mainDashboardItemModel.subtitle1,
                      style: mainDashboardItemModel.index != 4
                          ? Styles.bold24(context)
                          : Styles.bold24(context).copyWith(fontSize: 18))),
              if (mainDashboardItemModel.subtitle2 != null)
                Row(
                  children: [
                    Flexible(
                        child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(mainDashboardItemModel.subtitle2!,
                                style: Styles.bold12(context)))),
                    const SizedBox(width: 8),
                    Flexible(
                      child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(mainDashboardItemModel.subtitle3!,
                              style: Styles.regular12(context))),
                    ),
                  ],
                )
            ],
          ),
          trailing: mainDashboardItemModel.trailing,
        ),
      ),
    );
  }
}
