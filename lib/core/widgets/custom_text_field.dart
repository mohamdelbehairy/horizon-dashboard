import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: MediaQuery.sizeOf(context).width < 800
              ? Colors.transparent
              : const Color(0xffF4F7FE),
          border: borderMethod(context),
          enabledBorder: borderMethod(context),
          focusedBorder: borderMethod(context),
          hintText: 'Search',
          hintStyle: Styles.regular14(context),
          prefixIcon: SvgPicture.asset(
            Assets.imagesSearch,
            fit: BoxFit.scaleDown,
          )),
    );
  }

  OutlineInputBorder borderMethod(BuildContext context) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(49),
        borderSide: BorderSide(
            color: MediaQuery.sizeOf(context).width < 800
                ? Colors.transparent
                : const Color(0xffF4F7FE)));
  }
}
