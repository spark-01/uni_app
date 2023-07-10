import 'app_zh.dart';

/// 翻译
class AppTrans {
  AppTrans._();

  static String message(String key) {
    final data = appZh;
    return data[key] ?? key;
  }
}
