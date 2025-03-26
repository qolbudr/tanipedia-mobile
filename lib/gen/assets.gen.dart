/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/images/apple.png');

  /// File path: assets/images/bakulku.png
  AssetGenImage get bakulku => const AssetGenImage('assets/images/bakulku.png');

  /// File path: assets/images/bibit-category.png
  AssetGenImage get bibitCategory =>
      const AssetGenImage('assets/images/bibit-category.png');

  /// File path: assets/images/biji-category.png
  AssetGenImage get bijiCategory =>
      const AssetGenImage('assets/images/biji-category.png');

  /// File path: assets/images/buah-category.png
  AssetGenImage get buahCategory =>
      const AssetGenImage('assets/images/buah-category.png');

  /// File path: assets/images/edukasi-nav.png
  AssetGenImage get edukasiNav =>
      const AssetGenImage('assets/images/edukasi-nav.png');

  /// File path: assets/images/edukasi.png
  AssetGenImage get edukasi => const AssetGenImage('assets/images/edukasi.png');

  /// File path: assets/images/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/images/facebook.png');

  /// File path: assets/images/google.png
  AssetGenImage get google => const AssetGenImage('assets/images/google.png');

  /// File path: assets/images/header-img.png
  AssetGenImage get headerImg =>
      const AssetGenImage('assets/images/header-img.png');

  /// File path: assets/images/home-nav.png
  AssetGenImage get homeNav =>
      const AssetGenImage('assets/images/home-nav.png');

  /// File path: assets/images/onboard_1.png
  AssetGenImage get onboard1 =>
      const AssetGenImage('assets/images/onboard_1.png');

  /// File path: assets/images/onboard_2.png
  AssetGenImage get onboard2 =>
      const AssetGenImage('assets/images/onboard_2.png');

  /// File path: assets/images/onboard_3.png
  AssetGenImage get onboard3 =>
      const AssetGenImage('assets/images/onboard_3.png');

  /// File path: assets/images/onboard_4.png
  AssetGenImage get onboard4 =>
      const AssetGenImage('assets/images/onboard_4.png');

  /// File path: assets/images/onboard_5.png
  AssetGenImage get onboard5 =>
      const AssetGenImage('assets/images/onboard_5.png');

  /// File path: assets/images/padi.png
  AssetGenImage get padi => const AssetGenImage('assets/images/padi.png');

  /// File path: assets/images/pohondana-nav.png
  AssetGenImage get pohondanaNav =>
      const AssetGenImage('assets/images/pohondana-nav.png');

  /// File path: assets/images/pohondana.png
  AssetGenImage get pohondana =>
      const AssetGenImage('assets/images/pohondana.png');

  /// File path: assets/images/provile-nav.png
  AssetGenImage get provileNav =>
      const AssetGenImage('assets/images/provile-nav.png');

  /// File path: assets/images/pupuk-category.png
  AssetGenImage get pupukCategory =>
      const AssetGenImage('assets/images/pupuk-category.png');

  /// File path: assets/images/sayur-category.png
  AssetGenImage get sayurCategory =>
      const AssetGenImage('assets/images/sayur-category.png');

  /// File path: assets/images/tanipedia.png
  AssetGenImage get tanipedia =>
      const AssetGenImage('assets/images/tanipedia.png');

  /// File path: assets/images/toko-nav.png
  AssetGenImage get tokoNav =>
      const AssetGenImage('assets/images/toko-nav.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        apple,
        bakulku,
        bibitCategory,
        bijiCategory,
        buahCategory,
        edukasiNav,
        edukasi,
        facebook,
        google,
        headerImg,
        homeNav,
        onboard1,
        onboard2,
        onboard3,
        onboard4,
        onboard5,
        padi,
        pohondanaNav,
        pohondana,
        provileNav,
        pupukCategory,
        sayurCategory,
        tanipedia,
        tokoNav
      ];
}

class Assets {
  const Assets._();

  static const AssetGenImage icon = AssetGenImage('assets/icon.png');
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<AssetGenImage> get values => [icon];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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
