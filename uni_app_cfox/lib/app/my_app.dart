import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_base/base_app.dart';
import 'package:uni_base/theme/app_theme.dart';
import 'package:uni_widget/ol_loading_widget.dart';
import 'package:uni_app_cfox/app/app_bindings.dart';
import 'package:uni_app_cfox/app/app_pages.dart';

class MyApp extends BaseApp {
  const MyApp({Key? key}) : super(key: key);

  /// 主题
  @override
  ThemeData? getTheme() => AppTheme.light();

  /// 标题
  @override
  String getTitle() => "测试组合";

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
}
