import 'package:flutter/material.dart';

class Styles {
  static TextStyle title(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 26),
        color: const Color(0xff2B3674),
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins');
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        color: const Color(0xff2B3674),
        fontWeight: FontWeight.w700,
        fontFamily: 'DM Sans');
  }

  static TextStyle bold18(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        color: const Color(0xff1B2559),
        fontWeight: FontWeight.w700,
        fontFamily: 'DM Sans');
  }

  static TextStyle bold10(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 10),
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontFamily: 'DM Sans');
  }

  static TextStyle medium16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        color: const Color(0xffA3AED0),
        fontWeight: FontWeight.w500,
        fontFamily: 'DM Sans');
  }

  static TextStyle medium14(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        color: const Color(0xffA3AED0),
        fontWeight: FontWeight.w500,
        fontFamily: 'DM Sans');
  }

  static TextStyle bold34(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 34),
        color: const Color(0xff2B3674),
        fontWeight: FontWeight.w700,
        fontFamily: 'DM Sans');
  }

  static TextStyle bold24(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        color: const Color(0xff2B3674),
        fontWeight: FontWeight.w700,
        fontFamily: 'DM Sans');
  }

  static TextStyle bold12(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        color: const Color(0xff05CD99),
        fontWeight: FontWeight.w700,
        fontFamily: 'DM Sans');
  }

  static TextStyle regular12(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        color: const Color(0xffA3AED0),
        fontWeight: FontWeight.w400,
        fontFamily: 'DM Sans');
  }

  static TextStyle regular14(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        color: const Color(0xff8F9BBA),
        fontWeight: FontWeight.w400,
        fontFamily: 'DM Sans');
  }

  static TextStyle bold14(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        color: const Color(0xff2B3674),
        fontWeight: FontWeight.w700,
        fontFamily: 'DM Sans');
  }

  static TextStyle bold20(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        color: const Color(0xff2B3674),
        fontWeight: FontWeight.w700,
        fontFamily: 'DM Sans');
  }

  static TextStyle medium12(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        color: const Color(0xffA3AED0),
        fontWeight: FontWeight.w500,
        fontFamily: 'DM Sans');
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scallFactor = getScallFactor(context);
  double responsiveFontSize = fontSize * scallFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScallFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
