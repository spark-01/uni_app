import 'package:uni_base/base_service.dart';
import 'package:uni_base/config/app_config.dart';
import 'package:uni_base/config/app_type.dart';
import 'package:uni_base/theme/skin_type.dart';
import 'package:uni_http/cache/user_manager_cache.dart';
import 'package:uni_widget/ol_loading_widget.dart';

class AppService extends BaseService {
  @override
  Future<void> initOther() async {
    // loading和toast配置
    OLEasyLoading.config();
    // 加载用户信息
    await UserManagerCache.shared.load();
  }

  @override
  AppType getAppType() {
    // 设置皮肤
    AppConfig.skinType = SkinType.cfox;
    return AppConfig.appType = AppType.cfox;
  }
}
