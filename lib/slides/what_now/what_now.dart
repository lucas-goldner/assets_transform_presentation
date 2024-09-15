import 'package:assets_transformation_presentation/core/extensions/context_ext.dart';
import 'package:assets_transformation_presentation/core/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhatNow extends FlutterDeckSlideWidget {
  const WhatNow()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/what-now',
            title: 'What Now',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
            steps: 4,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.custom(
        builder: (context) => FlutterDeckSlideStepsBuilder(
          builder: (context, stepNumber) => Column(
            children: [
              verticalMargin8,
              Text('Cool, but what now?', style: context.textTheme.title),
              verticalMargin32,
              Padding(
                padding: horizontalPadding16,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AnimatedFadeAtStep(
                          step: 1,
                          currentStep: stepNumber,
                          child: Image.asset(
                            width: 700,
                            'assets/images/transform_packages.webp',
                          ),
                        ),
                        AnimatedFadeAtStep(
                          step: 2,
                          currentStep: stepNumber,
                          child: Image.asset(
                            width: 600,
                            'assets/images/png_to_jpg.webp',
                          ),
                        ),
                      ],
                    ),
                    AnimatedFadeAtStep(
                      step: 3,
                      currentStep: stepNumber,
                      child: Text('AI', style: context.textTheme.title),
                    ),
                    AnimatedFadeAtStep(
                      step: 4,
                      currentStep: stepNumber,
                      child: Text(
                        'x2 x3 x4 Variants',
                        style: context.textTheme.title,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
