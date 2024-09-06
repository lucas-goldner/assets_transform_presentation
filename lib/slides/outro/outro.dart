import 'package:assets_transformation_presentation/core/extensions/context_ext.dart';
import 'package:assets_transformation_presentation/core/widgets/margins.dart';
import 'package:assets_transformation_presentation/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class OutroSlide extends FlutterDeckSlideWidget {
  const OutroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/outro-slide',
            title: 'Outro slide',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.qr.image(height: 400, width: 400),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text(
                      context.l10n.thanks,
                      style: context.textTheme.title,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28, top: 12),
                      child: Assets.images.youtrustFullLogo.svg(
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            verticalMargin32,
            Text(
              context.l10n.letsConnect,
              style: context.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            verticalMargin32,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.l10n.madeWith,
                  style: context.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                horizontalMargin12,
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: [
                      Color(0xFF60d7fb),
                      Color(0xFF52a7f8),
                      Color(0xFF6d6ef3),
                      Color(0xFFa24ef2),
                      Color(0xFFa94af1),
                      Color(0xFFda33ef),
                      Color(0xFFf22bee),
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    'flutter_deck',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 72,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
