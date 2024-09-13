import 'package:assets_transformation_presentation/core/extensions/context_ext.dart';
import 'package:assets_transformation_presentation/core/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class ShowingSVG2 extends FlutterDeckSlideWidget {
  const ShowingSVG2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/showing-svg-2',
            title: 'Show SVG 2',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: (context) => const _ShowingSVG2Content(),
    );
  }
}

class _ShowingSVG2Content extends HookWidget {
  const _ShowingSVG2Content();

  @override
  Widget build(BuildContext context) {
    final showVectorGraphic = useState(false);
    final showSVGPicture = useState(false);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SVG with VectorGraphic', style: context.textTheme.subtitle),
            horizontalMargin12,
            ElevatedButton(
              onPressed: () =>
                  showVectorGraphic.value = !showVectorGraphic.value,
              child: Text(
                showVectorGraphic.value ? 'Hide SVG' : 'Show SVG',
                style: context.textTheme.subtitle,
              ),
            ),
          ],
        ),
        Visibility(
          visible: showVectorGraphic.value,
          child: const VectorGraphic(
            loader: AssetBytesLoader('assets/svg/hessen.svg'),
            width: 300,
            height: 300,
          ),
        ),
        verticalMargin48,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SVG with SvgPicture', style: context.textTheme.subtitle),
            horizontalMargin12,
            ElevatedButton(
              onPressed: () => showSVGPicture.value = !showSVGPicture.value,
              child: Text(
                showSVGPicture.value ? 'Hide SVG' : 'Show SVG',
                style: context.textTheme.subtitle,
              ),
            ),
          ],
        ),
        Visibility(
          visible: showSVGPicture.value,
          child: SvgPicture.asset(
            'assets/svg/hessen_2.svg',
            width: 300,
            height: 300,
          ),
        ),
      ],
    );
  }
}
