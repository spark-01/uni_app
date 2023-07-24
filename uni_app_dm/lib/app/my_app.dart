import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_base/base_app.dart';
import 'package:uni_base/theme/app_theme.dart';
import 'package:uni_widget/ol_loading_widget.dart';
import 'package:uni_app_dm/app/app_bindings.dart';
import 'package:uni_app_dm/app/app_pages.dart';
import 'package:uni_refresh/pull_to_refresh.dart';

class MyApp extends BaseApp {
  const MyApp({Key? key}) : super(key: key);

  /// 主题
  @override
  ThemeData? getTheme() => AppTheme.light();

  /// 标题
  @override
  String getTitle() => "动漫社";

  /// 获取页面
  @override
  List<GetPage>? getPages() => AppPages.getAllPages();

  /// 初始化bindings
  @override
  Bindings? getInitialBinding() => AppBindings();

  @override
  Widget builder(BuildContext context, Widget? child) {
    //初始化 loading和toast配置
    child = OLEasyLoading.init()(context, child);
    return child;
  }

  @override
  List<LocalizationsDelegate> otherSupportLocal() {
    return [
      RefreshLocalizations.delegate,
    ];
  }
}
