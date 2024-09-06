import 'package:assets_transformation_presentation/core/style/colors.dart';
import 'package:assets_transformation_presentation/generated/fonts.gen.dart';
import 'package:flutter/cupertino.dart';

class TextStyles {
  static TextStyle get title => const TextStyle(
        fontSize: 96,
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.graphik,
        color: regularTextColor,
      );
  static TextStyle get titleDark => title.copyWith(
        color: regularTextColorDark,
      );

  static TextStyle get regular => const TextStyle(
        fontSize: 52,
        fontWeight: FontWeight.bold,
        fontFamily: FontFamily.graphik,
        color: regularTextColor,
      );
  static TextStyle get regularDark =>
      regular.copyWith(color: regularTextColorDark);

  static TextStyle get footer => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.graphik,
        color: regularTextColor,
      );
  static TextStyle get footerDark =>
      footer.copyWith(color: regularTextColorDark);
}
