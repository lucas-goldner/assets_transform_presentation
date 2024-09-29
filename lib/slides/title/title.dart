import 'dart:io';

import 'package:assets_transformation_presentation/core/widgets/resized_image.dart';
import 'package:flutter/material.dart';
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
  FlutterDeckSlide build(BuildContext context) {
    final lol = Image.asset(
      'assets/images/boba.jpeg',
      width: 300,
    ).image;

    return FlutterDeckSlide.custom(
      builder: (context) => const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageResized(
                  imagePath: 'assets/images/boba.jpeg',
                ),

                // Image.asset(
                //   'assets/images/boba@3x.jpeg',
                //   width: 300,
                // ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ],
        ),
      ),
    );
  }
}
