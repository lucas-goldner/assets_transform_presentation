import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SVGCode extends FlutterDeckSlideWidget {
  const SVGCode()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/svgcode',
            title: 'SVG Code',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.custom(
        builder: (context) => const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterDeckCodeHighlight(
              code: '''
const VectorGraphic(
  loader: AssetBytesLoader('assets/svg/hessen.svg'),
  width: 300,
  height: 300,
)
          
SvgPicture.asset(
  'assets/svg/hessen_2.svg',
  width: 300,
  height: 300,
)''',
            ),
          ],
        ),
      );
}
