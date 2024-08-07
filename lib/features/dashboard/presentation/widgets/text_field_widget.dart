import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';

import 'text_field_listview.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 4),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF4F7FE),
                  border: borderMethod(),
                  enabledBorder: borderMethod(),
                  focusedBorder: borderMethod(),
                  hintText: 'Search',
                  hintStyle: Styles.regular14(context),
                  prefixIcon: SvgPicture.asset(
                    Assets.imagesSearch,
                    fit: BoxFit.scaleDown,
                  )),
            )),
            const TextFieldListView(),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder borderMethod() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(49),
        borderSide: const BorderSide(color: Color(0xffF4F7FE)));
  }
}
