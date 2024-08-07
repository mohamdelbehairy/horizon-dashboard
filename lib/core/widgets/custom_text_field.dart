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
    );
  }

  OutlineInputBorder borderMethod() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(49),
        borderSide: const BorderSide(color: Color(0xffF4F7FE)));
  }
}
