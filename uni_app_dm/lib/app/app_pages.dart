import 'package:get/get.dart';
import 'package:uni_app_base/app/app_base_pages.dart';
import 'package:uni_app_community/app/app_community_pages.dart';
import 'package:uni_app_creator/app/app_creator_pages.dart';
import 'package:uni_app_game/app/app_game_pages.dart';
import 'package:uni_app_mine/app/app_mine_pages.dart';
import 'package:uni_app_mine/page/dm/home/mine_dm_binding.dart';
import 'package:uni_app_dm/app/app_bindings.dart';
import 'package:uni_app_dm/page/main/main_page.dart';
import 'package:uni_app_video/app/app_video_pages.dart';
import 'package:uni_app_video/page/video_home/video_home_binding.dart';
import 'package:uni_app_wallet/app/app_wallet_pages.dart';
import 'package:uni_base/routes/base_routes.dart';

class AppPages {
  AppPages._();

  static final pages = [
    /// 主页
    GetPage(name: BaseRoutes.main, page: () => MainPage(), bindings: [
      AppBindings(),
      VideoHomeBinding(),
      MineDmBinding(),
    ]),
  ];

  static List<GetPage> getAllPages() {
    List<GetPage> pages = [];

    /// 主页
    pages.addAll(AppPages.pages);

    /// 通用功能
    pages.addAll(AppBasePages.pages);

    /// 游戏
    pages.addAll(AppGamePages.pages);

    /// 钱包
    pages.addAll(AppWalletPages.pages);

    /// 社区
    pages.addAll(AppCommunityPages.pages);

    /// 我的
    pages.addAll(AppMinePages.pages);

    /// 动漫
    pages.addAll(AppVideoPages.pages);

    /// 动漫发布
    pages.addAll(AppCreatorPages.pages);
    return pages;
  }
}
