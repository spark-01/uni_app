import 'package:get/get.dart';
import 'package:uni_app_base/app/app_base_bindings.dart';
import 'package:uni_app_community/app/app_community_bindings.dart';
import 'package:uni_app_creator/app/app_creator_bindings.dart';
import 'package:uni_app_game/app/app_game_bindings.dart';
import 'package:uni_app_mine/app/app_mine_bindings.dart';
import 'package:uni_app_dm/page/main/main_controller.dart';
import 'package:uni_app_video/app/app_video_bindings.dart';
import 'package:uni_app_wallet/app/app_wallet_bindings.dart';
import 'package:uni_base/getx/get_base_binding.dart';

class AppBindings extends GetBaseBindings {
  @override
  void dependencies() {
    super.dependencies();
    Get.lazyPut<MainController>(() => MainController());

    /// 通用功能
    AppBaseBindings.bindings();

    /// 游戏
    AppGameBindings.bindings();
    /// 钱包
    AppWalletBindings.bindings();

    /// 社区
    AppCommunityBindings.bindings();

    /// 视频
    AppVideoBindings.bindings();

    /// 我的界面
    AppMineBindings.bindings();

    /// 动漫发布
    AppCreatorBindings.bindings();
  }
}
