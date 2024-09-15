import 'package:assets_transformation_presentation/core/extensions/context_ext.dart';
import 'package:assets_transformation_presentation/core/style/code_display_color_themes.dart';
import 'package:assets_transformation_presentation/core/widgets.dart';
import 'package:assets_transformation_presentation/core/widgets/code_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TransformerPackageCode extends FlutterDeckSlideWidget {
  const TransformerPackageCode()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/transformer-package-code',
            title: 'Transformer Package Code',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.custom(
        builder: (context) => Column(
          children: [
            verticalMargin8,
            Text('Transformer Package Code', style: context.textTheme.title),
            verticalMargin32,
            SizedBox(
              width: 700,
              height: 600,
              child: CodeDisplay(
                '''
            import 'dart:io';
            
            import 'package:args/args.dart';
            import 'package:image/image.dart';
            
            const inputOptionName = 'input';
            const outputOptionName = 'output';
            
            int main(List<String> arguments) {
              final parser = ArgParser()
              ..addOption(inputOptionName, mandatory: true, abbr: 'i')
              ..addOption(outputOptionName, mandatory: true, abbr: 'o');
            
              ArgResults argResults = parser.parse(arguments);
              final String inputFilePath = argResults[inputOptionName];
              final String outputFilePath = argResults[outputOptionName];
            
              try {
                final Image image = decodeImage(File(inputFilePath).readAsBytesSync())!;
                File(outputFilePath).writeAsBytesSync(encodeJpg(image));
                return 0;
              } catch (e) {
                return 1;
              }
            }
            ''',
                codeColorTheme: CodeDisplayColorThemes.dartCodeViewerDark,
                padding: allPadding32,
                boxDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      );
}
