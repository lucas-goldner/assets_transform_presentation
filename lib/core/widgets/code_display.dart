import 'package:assets_transformation_presentation/core/style/code_display_color_themes.dart';
import 'package:dart_code_viewer_x/dart_code_viewer_x.dart';
import 'package:dart_style/dart_style.dart';
import 'package:flutter/material.dart';

String formatCode(String code) {
  final formatter = DartFormatter();
  return formatter.format(code);
}

class CodeDisplay extends StatelessWidget {
  CodeDisplay(
    this.code, {
    this.codeColorTheme,
    this.width,
    this.height,
    this.showCopyButton,
    this.copyButtonReplacement,
    this.boxDecoration,
    this.commentTextStyle,
    this.baseTextStyle,
    this.classTextStyle,
    this.keywordTextStyle,
    this.stringTextStyle,
    this.punctuationTextStyle,
    this.padding,
    super.key,
  }) : _formattedCode = formatCode(code);

  final String code;
  final String _formattedCode;
  final bool? showCopyButton;
  final Widget? copyButtonReplacement;
  final double? height;
  final double? width;
  final CodeDisplayColorThemes? codeColorTheme;
  final BoxDecoration? boxDecoration;
  final TextStyle? commentTextStyle;
  final TextStyle? baseTextStyle;
  final TextStyle? classTextStyle;
  final TextStyle? keywordTextStyle;
  final TextStyle? stringTextStyle;
  final TextStyle? punctuationTextStyle;
  final EdgeInsets? padding;

  TextStyle getTextStyle(TextStyle? textStyle, Color? color) {
    if (textStyle != null && textStyle.color != null) {
      return textStyle;
    }

    return (textStyle ?? const TextStyle()).copyWith(color: color);
  }

  BoxDecoration getBoxDecoration(BoxDecoration? boxDecoration, Color? color) {
    if (boxDecoration != null) {
      return boxDecoration.color != null
          ? boxDecoration
          : boxDecoration.copyWith(color: color);
    }

    if (color != null) {
      return BoxDecoration(color: color);
    }

    return const BoxDecoration();
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          key: const Key('CodeDisplayContainer'),
          padding: padding,
          decoration: getBoxDecoration(
            boxDecoration,
            codeColorTheme?.backgroundColor,
          ),
          child: DartCodeViewer(
            _formattedCode,
            width: width,
            height: height,
            showCopyButton: showCopyButton ?? false,
            displayCopyNotification: false,
            copyButtonReplacement: copyButtonReplacement,
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
            commentStyle:
                getTextStyle(commentTextStyle, codeColorTheme?.commentColor),
            baseStyle: getTextStyle(baseTextStyle, codeColorTheme?.baseColor),
            classStyle:
                getTextStyle(classTextStyle, codeColorTheme?.classColor),
            keywordStyle:
                getTextStyle(keywordTextStyle, codeColorTheme?.keywordColor),
            stringStyle:
                getTextStyle(stringTextStyle, codeColorTheme?.stringColor),
            punctuationStyle: getTextStyle(
              punctuationTextStyle,
              codeColorTheme?.punctuationColor,
            ),
          ),
        ),
      );
}
