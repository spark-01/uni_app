/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsDmGen {
  const $AssetsDmGen();

  /// File path: assets/dm/tab_animation_normal.png
  AssetGenImage get tabAnimationNormal =>
      const AssetGenImage('assets/dm/tab_animation_normal.png');

  /// File path: assets/dm/tab_animation_selected.png
  AssetGenImage get tabAnimationSelected =>
      const AssetGenImage('assets/dm/tab_animation_selected.png');

  /// File path: assets/dm/tab_mine_normal.png
  AssetGenImage get tabMineNormal =>
      const AssetGenImage('assets/dm/tab_mine_normal.png');

  /// File path: assets/dm/tab_mine_selected.png
  AssetGenImage get tabMineSelected =>
      const AssetGenImage('assets/dm/tab_mine_selected.png');

  /// File path: assets/dm/tab_square_normal.png
  AssetGenImage get tabSquareNormal =>
      const AssetGenImage('assets/dm/tab_square_normal.png');

  /// File path: assets/dm/tab_square_selected.png
  AssetGenImage get tabSquareSelected =>
      const AssetGenImage('assets/dm/tab_square_selected.png');

  /// File path: assets/dm/tab_video_normal.png
  AssetGenImage get tabVideoNormal =>
      const AssetGenImage('assets/dm/tab_video_normal.png');

  /// File path: assets/dm/tab_video_selected.png
  AssetGenImage get tabVideoSelected =>
      const AssetGenImage('assets/dm/tab_video_selected.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        tabAnimationNormal,
        tabAnimationSelected,
        tabMineNormal,
        tabMineSelected,
        tabSquareNormal,
        tabSquareSelected,
        tabVideoNormal,
        tabVideoSelected
      ];
}

class Assets {
  Assets._();

  static const $AssetsDmGen dm = $AssetsDmGen();
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
