import 'package:assets_transformation_presentation/core/widgets/fade_animation.dart';
import 'package:flutter/material.dart';

class AnimatedFadeAtStep extends StatelessWidget {
  const AnimatedFadeAtStep({
    required this.step,
    required this.currentStep,
    required this.child,
    super.key,
  });

  final int step;
  final int currentStep;
  final Widget child;

  @override
  Widget build(BuildContext context) => Visibility(
        visible: currentStep >= step,
        child: FadeAnimation(
          delay: 1,
          child: child,
        ),
      );
}
