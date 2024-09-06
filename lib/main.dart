import 'package:assets_transformation_presentation/core/style/colors.dart';
import 'package:assets_transformation_presentation/core/style/theme.dart';
import 'package:assets_transformation_presentation/slides/outro/outro.dart';
import 'package:assets_transformation_presentation/slides/speaker/speaker.dart';
import 'package:assets_transformation_presentation/slides/title/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const FlutterDeckExample());

class FlutterDeckExample extends StatelessWidget {
  const FlutterDeckExample({super.key});

  @override
  Widget build(BuildContext context) => FlutterDeckApp(
        lightTheme: flutterDeckThemeLight,
        darkTheme: flutterDeckThemeDark,
        themeMode: ThemeMode.light,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        configuration: FlutterDeckConfiguration(
          controls: const FlutterDeckControlsConfiguration(
            shortcuts: FlutterDeckShortcutsConfiguration(
              nextSlide: SingleActivator(LogicalKeyboardKey.arrowUp),
              previousSlide: SingleActivator(LogicalKeyboardKey.arrowDown),
              toggleMarker: SingleActivator(
                LogicalKeyboardKey.keyM,
                control: true,
                meta: true,
              ),
              toggleNavigationDrawer: SingleActivator(
                LogicalKeyboardKey.period,
                control: true,
                meta: true,
              ),
            ),
          ),
          marker: const FlutterDeckMarkerConfiguration(
            color: Color(0xFF3FE4C5),
            strokeWidth: 8,
          ),
          progressIndicator: const FlutterDeckProgressIndicator.gradient(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                viennaRed,
                viennaBlue,
              ],
            ),
            backgroundColor: Colors.black,
          ),
          transition: const FlutterDeckTransition.fade(),
          slideSize: FlutterDeckSlideSize.fromAspectRatio(
            aspectRatio: const FlutterDeckAspectRatio.ratio16x10(),
            resolution: const FlutterDeckResolution.fromWidth(1440),
          ),
        ),
        slides: const [
          SpeakerSlide(),
          TitleSlide(),
          OutroSlide(),
        ],
      );
}
