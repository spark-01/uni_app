import 'package:flutter/material.dart';
import 'package:uni_app_base/main/base_main_controller.dart';
import 'package:uni_app_base/main/main_tab_item.dart';
import 'package:uni_app_community/page/up_home/community_home_page.dart';
import 'package:uni_app_douyin/page/home/douyin_home_page.dart';
import 'package:uni_app_game/page/home/game_home_page.dart';
import 'package:uni_app_mine_cfox/page/home/mine_page.dart';
import 'package:uni_app_cfox/gen/assets.gen.dart';
import 'package:uni_app_cfox/trans/app_trans.dart';
import 'package:uni_app_video/page/video_home/video_home_page.dart';
import 'package:uni_widget/ol_keep_alive_widget.dart';

/// 视频主页controller
class MainController extends BaseMainController {
  @override
  List<Widget> getTabItemPages() {
    List<Widget> list = [];
    list.add(const OlKeepAliveWidget(child: VideoHomePage()));
    list.add(OlKeepAliveWidget(child: DouYinHomePage()));
    list.add(const OlKeepAliveWidget(child: GameHomePage()));
    list.add(const OlKeepAliveWidget(child: CommunityHomePage()));
    list.add(const OlKeepAliveWidget(child: MinePage()));
    return list;
  }

  @override
  void mainTabItems() {
    /// 视频页面
    tabItems.add(MainTabItem(
        name: AppTrans.message("tab_video"),
        iconNormal: Assets.cfox.tabVideoNormal.path,
        iconSelected: Assets.cfox.tabVideoLottie, selectedLottie: true));

    /// 抖音页面
    tabItems.add(MainTabItem(
        name: AppTrans.message("tab_douyin"),
        iconNormal: Assets.cfox.tabDouyinNomal.path,
        iconSelected: Assets.cfox.tabDouyinLottie, selectedLottie: true));

    /// 游戏页面
    tabItems.add(MainTabItem(
        name: AppTrans.message("tab_game"),
        iconNormal: Assets.cfox.tabGameNormal.path,
        iconSelected: Assets.cfox.tabGameLottie, selectedLottie: true));

    /// 社区页面
    tabItems.add(MainTabItem(
        name: AppTrans.message("tab_community"),
        iconNormal: Assets.cfox.tabCommunityNomal.path,
        iconSelected: Assets.cfox.tabCommunityLottie, selectedLottie: true));

    /// 我的页面
    tabItems.add(MainTabItem(
        name: AppTrans.message("tab_mine"),
        iconNormal: Assets.cfox.tabMineNormal.path,
        iconSelected: Assets.cfox.tabMineLottie, selectedLottie: true));

  }
}
