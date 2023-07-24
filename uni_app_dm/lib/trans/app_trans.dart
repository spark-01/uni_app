import 'package:uni_app_dm/trans/app_zh.dart';
import 'package:uni_base/utils/trans_utils.dart';

/// 翻译
class AppTrans {
  AppTrans._();

  static String message(String key) {
    return TransUtils.trans(appZh, key);
  }
}
