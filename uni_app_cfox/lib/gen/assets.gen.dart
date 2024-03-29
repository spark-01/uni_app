/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsCfoxGen {
  const $AssetsCfoxGen();

  /// File path: assets/cfox/tab_community_lottie.json
  String get tabCommunityLottie => 'assets/cfox/tab_community_lottie.json';

  /// File path: assets/cfox/tab_community_nomal.png
  AssetGenImage get tabCommunityNomal =>
      const AssetGenImage('assets/cfox/tab_community_nomal.png');

  /// File path: assets/cfox/tab_douyin_lottie.json
  String get tabDouyinLottie => 'assets/cfox/tab_douyin_lottie.json';

  /// File path: assets/cfox/tab_douyin_nomal.png
  AssetGenImage get tabDouyinNomal =>
      const AssetGenImage('assets/cfox/tab_douyin_nomal.png');

  /// File path: assets/cfox/tab_game_lottie.json
  String get tabGameLottie => 'assets/cfox/tab_game_lottie.json';

  /// File path: assets/cfox/tab_game_normal.png
  AssetGenImage get tabGameNormal =>
      const AssetGenImage('assets/cfox/tab_game_normal.png');

  /// File path: assets/cfox/tab_home_lottie.json
  String get tabHomeLottie => 'assets/cfox/tab_home_lottie.json';

  /// File path: assets/cfox/tab_home_normal.png
  AssetGenImage get tabHomeNormal =>
      const AssetGenImage('assets/cfox/tab_home_normal.png');

  /// File path: assets/cfox/tab_mine_lottie.json
  String get tabMineLottie => 'assets/cfox/tab_mine_lottie.json';

  /// File path: assets/cfox/tab_mine_normal.png
  AssetGenImage get tabMineNormal =>
      const AssetGenImage('assets/cfox/tab_mine_normal.png');

  /// File path: assets/cfox/tab_video_lottie.json
  String get tabVideoLottie => 'assets/cfox/tab_video_lottie.json';

  /// File path: assets/cfox/tab_video_normal.png
  AssetGenImage get tabVideoNormal =>
      const AssetGenImage('assets/cfox/tab_video_normal.png');

  /// List of all assets
  List<dynamic> get values => [
        tabCommunityLottie,
        tabCommunityNomal,
        tabDouyinLottie,
        tabDouyinNomal,
        tabGameLottie,
        tabGameNormal,
        tabHomeLottie,
        tabHomeNormal,
        tabMineLottie,
        tabMineNormal,
        tabVideoLottie,
        tabVideoNormal
      ];
}

class Assets {
  Assets._();

  static const $AssetsCfoxGen cfox = $AssetsCfoxGen();
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
