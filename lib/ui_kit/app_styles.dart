import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppStyles{

  static TextStyle kHeadlinerWhite(double fontSize) {
    return TextStyle(
      fontFamily: 'Headliner No. 45',
      height: 1,
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: AppColors.kWhite,
    );
  }

  static TextStyle kHeadlinerDeepOrange(double fontSize) {
    return TextStyle(
      fontFamily: 'Headliner No. 45',
      height: 1.24,
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: AppColors.kDeepOrange,
    );
  }

  static TextStyle kExo2BlackW900(double fontSize) {
    return TextStyle(
      fontFamily: 'Exo 2',
      height: 1.2,
      fontSize: fontSize,
      fontWeight: FontWeight.w900,
      color: AppColors.kBlack,
    );
  }

  static TextStyle kExo2WhiteW600(double fontSize) {
    return TextStyle(
      fontFamily: 'Exo 2',
      height: 1.2,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: AppColors.kWhite,
    );
  }

  static TextStyle kExo2WhiteW500(double fontSize) {
    return TextStyle(
      fontFamily: 'Exo 2',
      height: 1.2,
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: AppColors.kWhite,
    );
  }

  static TextStyle kExo2OrangeW700(double fontSize) {
    return TextStyle(
      fontFamily: 'Exo 2',
      height: 1.2,
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: AppColors.kOrange,
    );
  }

  static TextStyle kExo2YellowW600(double fontSize) {
    return TextStyle(
      fontFamily: 'Exo 2',
      height: 1,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: AppColors.kYellow,
    );
  }
}