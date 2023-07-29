import 'package:get/get.dart';
import 'package:uni_app_base/app/app_base_pages.dart';
import 'package:uni_app_community/page/up_home/community_home_binding.dart';
import 'package:uni_app_douyin/page/home/douyin_home_binding.dart';
import 'package:uni_app_game/app/app_game_pages.dart';
import 'package:uni_app_mine_cfox/app/app_mine_pages.dart';
import 'package:uni_app_mine_cfox/page/home/mine_binding.dart';
import 'package:uni_app_video/app/app_video_pages.dart';
import 'package:uni_app_game/page/home/game_home_binding.dart';
import 'package:uni_app_video/page/video_home/video_home_binding.dart';
import 'package:uni_app_wallet/app/app_wallet_pages.dart';
import 'package:uni_base/routes/base_routes.dart';
import 'package:uni_app_cfox/page/main/main_page.dart';
import 'package:uni_app_cfox/app/app_bindings.dart';
import 'package:uni_app_community/app/app_community_pages.dart';
import 'package:uni_app_douyin/app/app_douyin_pages.dart';
import 'package:uni_app_creator/app/app_creator_pages.dart';

class AppPages {
  AppPages._();

  static final pages = [
    /// 主页
    GetPage(name: BaseRoutes.main, page: () => MainPage(), bindings: [
      AppBindings(),
      GameHomeBinding(),
      VideoHomeBinding(),
      DouyinHomeBinding(),
      CommunityHomeBinding(),
      MineBinding()
    ]),
  ];

  static List<GetPage> getAllPages() {
    List<GetPage> pages = [];

    /// cfox
    pages.addAll(AppPages.pages);

    /// 通用功能
    pages.addAll(AppBasePages.pages);

    /// 游戏
    pages.addAll(AppGamePages.pages);

    /// 钱包
    pages.addAll(AppWalletPages.pages);

    /// 视频
    pages.addAll(AppVideoPages.pages);

    /// 社区
    pages.addAll(AppCommunityPages.pages);

    /// 我的
    pages.addAll(AppMinePages.pages);

    /// 抖阴
    pages.addAll(AppDouyinPages.pages);

    /// 创作者中心
    pages.addAll(AppCreatorPages.pages);

    return pages;
  }
}
