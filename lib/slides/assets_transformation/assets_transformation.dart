import 'package:assets_transformation_presentation/core/extensions/context_ext.dart';
import 'package:assets_transformation_presentation/core/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AssetsTransformation extends FlutterDeckSlideWidget {
  const AssetsTransformation()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/assets-transformation',
            title: 'Assets Transformation',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
            steps: 3,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.custom(
        builder: (context) => FlutterDeckSlideStepsBuilder(
          builder: (context, stepNumber) => Column(
            children: [
              Text('Assets Transformation', style: context.textTheme.title),
              verticalMargin48,
              verticalMargin48,
              FlutterDeckCodeHighlight(
                code: stepNumber == 1
                    ? '''
flutter:
  generate: true
  uses-material-design: true

  assets:
    - assets/svg/hessen.svg'''
                    : '''
flutter:
  generate: true
  uses-material-design: true

  assets:
    - path: assets/svg/hessen.svg
      transformers:
        - package: vector_graphics_compiler''',
              ),
              verticalMargin48,
              if (stepNumber == 3)
                Text(
                  'Vector Graphics Compiler: Precompiles SVG with optimizations',
                  style: context.textTheme.bodyLarge,
                ),
            ],
          ),
        ),
      );
}
