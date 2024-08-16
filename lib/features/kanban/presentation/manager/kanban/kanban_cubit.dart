import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/core/utils/assets.dart';

import '../../../data/models/kanban_item_model.dart';

part 'kanban_state.dart';

class KanbanCubit extends Cubit<KanbanState> {
  KanbanCubit() : super(KanbanInitial());

  List<KanbanItemModel> backlogList = [
    KanbanItemModel(
        title: 'Option to "use local/server version" feature',
        subTitle:
            "It usually displays this message when you close an unsaved page when you do it on purpose, and it's getting frustrated to see this every time.",
        buttonName: 'UPDATES',
        footerImage: Assets.imagesTwoImage,
        color: const Color(0xff3965FF)),
    KanbanItemModel(
        title: 'Add/modify your own CSS-Selectors',
        subTitle:
            "Website Design: The ability to add/modify your own CSS-Selectors like its done in Venus.",
        backgroundImage: Assets.imagesDashboardBuilder,
        buttonName: 'PENDING',
        footerImage: Assets.imagesThreeImage,
        color: const Color(0xffFFB547)),
    KanbanItemModel(
        title: 'Shortcode for templates to display correctly',
        subTitle:
            "When you save some sections as a template and then paste a shortcode to a new page, the layout is broken, some styles are missing - in the editor.",
        buttonName: 'ERRORS',
        footerImage: Assets.imagesOneImage,
        color: const Color(0xffE31A1A)),
  ];

  List<KanbanItemModel> inProgressList = [
    KanbanItemModel(
        title: "General ideas to improve 'Edit' workflow",
        subTitle:
            "Currently, I have a few templates in the Local Library and when I want to add them I'm always presented (by default).",
        buttonName: 'PENDING',
        footerImage: Assets.imagesThreeImage,
        color: const Color(0xffFFB547)),
    KanbanItemModel(
        title: 'Shortcode for templates to display correctly',
        subTitle:
            "When you save some sections as a template and then paste a shortcode to a new page, the layout is broken, some styles are missing - in the editor.",
        buttonName: 'UPDATES',
        footerImage: Assets.imagesOneImage,
        color: const Color(0xff3965FF)),
    KanbanItemModel(
        title: '[UX Design] - Set the default Library tab',
        subTitle:
            "I want to be able to set the default Library tab (or a way to remember the last active tab), especially when I already...",
        backgroundImage: Assets.imagesDashboardDesign,
        buttonName: 'ERRORS',
        footerImage: Assets.imagesTwoImage,
        color: const Color(0xffE31A1A)),
  ];

  List<KanbanItemModel> doneList = [
    KanbanItemModel(
        title: "Copy/Paste elements between pages",
        subTitle:
            "We can only copy/paste elements (or group of elements) in the same page, which is quite limited.",
        backgroundImage: Assets.imagesDashboardDesign,
        buttonName: 'DONE',
        footerImage: Assets.imagesOneImage,
        color: const Color(0xff01B574)),
    KanbanItemModel(
        title: 'Remove Extra DIV for each container added',
        subTitle:
            "I still hope there won't have an extra div for each container we added. It should be something for better styling...",
        buttonName: 'DONE',
        footerImage: Assets.imagesThreeImage,
        color: const Color(0xff01B574)),
    KanbanItemModel(
        title: 'Add Figma files for the Library design blocks',
        subTitle:
            "I want to present my clients the Figma files first, so it would be great if you add those as well, more manual downloads...",
        buttonName: 'DONE',
        footerImage: Assets.imagesTwoImage,
        color: const Color(0xff01B574)),
  ];
}
