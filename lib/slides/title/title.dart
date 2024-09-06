import 'package:assets_transformation_presentation/core/extensions/context_ext.dart';
import 'package:assets_transformation_presentation/core/style/colors.dart';
import 'package:assets_transformation_presentation/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title-slide',
            title: 'Title',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.custom(
        builder: (context) => Stack(
          children: [
            Positioned(
              left: 20,
              top: 20,
              child:
                  Assets.images.youtrustFullLogo.svg(width: 100, height: 100),
            ),
            Positioned(
              top: -100,
              right: 40,
              child: Assets.images.flutterViennaLogo.image(
                width: 400,
                height: 400,
              ),
            ),
            Positioned(
              bottom: -20,
              child: Transform.rotate(
                angle: 0.1,
                child: Assets.images.vienna.image(),
              ),
            ),
            Center(
              child: Text(
                context.l10n.presentationTitle,
                style: context.textTheme.title.copyWith(
                  fontSize: 68,
                ),
              )
                  .animate(
                    autoPlay: true,
                    onPlay: (controller) => controller.repeat(),
                  )
                  .shimmer(
                    duration: 3.seconds,
                    colors: [
                      viennaRed,
                      viennaBlue,
                      viennaRed,
                    ],
                    stops: [0, 0.8, 1],
                    curve: Curves.easeInQuad,
                  ),
            ),
          ],
        ),
      );
}
