/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/GraphikMedium.otf
  String get graphikMedium => 'assets/fonts/GraphikMedium.otf';

  /// File path: assets/fonts/GraphikRegular.otf
  String get graphikRegular => 'assets/fonts/GraphikRegular.otf';

  /// File path: assets/fonts/GraphikSemibold.otf
  String get graphikSemibold => 'assets/fonts/GraphikSemibold.otf';

  /// List of all assets
  List<String> get values => [graphikMedium, graphikRegular, graphikSemibold];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/flutter_deck_logo.webp
  AssetGenImage get flutterDeckLogo =>
      const AssetGenImage('assets/images/flutter_deck_logo.webp');

  /// File path: assets/images/flutter_vienna_logo.png
  AssetGenImage get flutterViennaLogo =>
      const AssetGenImage('assets/images/flutter_vienna_logo.png');

  /// File path: assets/images/fluttercon_logo.svg
  SvgGenImage get flutterconLogo =>
      const SvgGenImage('assets/images/fluttercon_logo.svg');

  /// File path: assets/images/fluttercon_particle_circle.svg
  SvgGenImage get flutterconParticleCircle =>
      const SvgGenImage('assets/images/fluttercon_particle_circle.svg');

  /// File path: assets/images/fluttercon_tower.svg
  SvgGenImage get flutterconTower =>
      const SvgGenImage('assets/images/fluttercon_tower.svg');

  /// File path: assets/images/fluttercon_tower_base.svg
  SvgGenImage get flutterconTowerBase =>
      const SvgGenImage('assets/images/fluttercon_tower_base.svg');

  /// File path: assets/images/lucas.jpeg
  AssetGenImage get lucas => const AssetGenImage('assets/images/lucas.jpeg');

  /// File path: assets/images/qr.png
  AssetGenImage get qr => const AssetGenImage('assets/images/qr.png');

  /// File path: assets/images/vienna.png
  AssetGenImage get vienna => const AssetGenImage('assets/images/vienna.png');

  /// File path: assets/images/youtrust.png
  AssetGenImage get youtrust =>
      const AssetGenImage('assets/images/youtrust.png');

  /// File path: assets/images/youtrust_full_logo.svg
  SvgGenImage get youtrustFullLogo =>
      const SvgGenImage('assets/images/youtrust_full_logo.svg');

  /// List of all assets
  List<dynamic> get values => [
        flutterDeckLogo,
        flutterViennaLogo,
        flutterconLogo,
        flutterconParticleCircle,
        flutterconTower,
        flutterconTowerBase,
        lucas,
        qr,
        vienna,
        youtrust,
        youtrustFullLogo
      ];
}

class $AssetsRiveGen {
  const $AssetsRiveGen();

  /// File path: assets/rive/folder.riv
  String get folder => 'assets/rive/folder.riv';

  /// List of all assets
  List<String> get values => [folder];
}

class $AssetsVideosGen {
  const $AssetsVideosGen();

  /// File path: assets/videos/state_lost.mov
  String get stateLost => 'assets/videos/state_lost.mov';

  /// File path: assets/videos/state_restored.mov
  String get stateRestored => 'assets/videos/state_restored.mov';

  /// List of all assets
  List<String> get values => [stateLost, stateRestored];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsRiveGen rive = $AssetsRiveGen();
  static const $AssetsVideosGen videos = $AssetsVideosGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
