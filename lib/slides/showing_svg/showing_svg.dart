import 'package:assets_transformation_presentation/core/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class ShowingSVG extends FlutterDeckSlideWidget {
  const ShowingSVG()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/showing-svg',
            title: 'Show SVG',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.custom(
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SVG with VectorGraphic', style: context.textTheme.subtitle),
            const VectorGraphic(
              loader: AssetBytesLoader('assets/svg/youtrust_full_logo.svg'),
              width: 300,
              height: 300,
            ),
            Text('SVG with SvgPicture', style: context.textTheme.subtitle),
            SvgPicture.asset(
              'assets/images/youtrust_full_logo.svg',
              width: 300,
              height: 300,
            ),
          ],
        ),
      );
}
