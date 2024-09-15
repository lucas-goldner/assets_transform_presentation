import 'package:assets_transformation_presentation/core/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SVGCode extends FlutterDeckSlideWidget {
  const SVGCode()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/vector-graphics',
            title: 'Vector Graphics',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.custom(
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Vector Graphics', style: context.textTheme.title),
          ],
        ),
      );
}
