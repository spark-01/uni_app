import 'package:flutter/material.dart';
import 'package:uni_app_base/main/base_main_controller.dart';
import 'package:uni_app_base/main/main_tab_item.dart';
import 'package:uni_app_community/page/dm_plaza_home/dm_plaza_home_page.dart';
import 'package:uni_app_dm/gen/assets.gen.dart';
import 'package:uni_app_dm/trans/app_trans.dart';
import 'package:uni_app_video/page/video_home/anime_home_page.dart';
import 'package:uni_app_video/page/video_home/video_home_page.dart';
import 'package:uni_widget/ol_keep_alive_widget.dart';
import 'package:uni_app_mine/page/dm/home/mine_dm_page.dart';

/// 主页controller
class MainController extends BaseMainController {
  @override
  List<Widget> getTabItemPages() {
    List<Widget> list = [];
    //动画
    list.add(const OlKeepAliveWidget(child: AnimeHomePage()));
    //视频
    list.add(const OlKeepAliveWidget(child: VideoHomePage()));
    // 广场
    list.add(const OlKeepAliveWidget(child: DmPlazaHomePage()));
    // 我的
    list.add(const OlKeepAliveWidget(child: MineDmPage()));
    return list;
  }

  @override
  void mainTabItems() {
    /// 动画
    tabItems.add(MainTabItem(
        name: AppTrans.message("tab_animation"),
        iconNormal: Assets.dm.tabAnimationNormal.path,
        iconSelected: Assets.dm.tabAnimationSelected.path));

    /// 视频
    tabItems.add(MainTabItem(
        name: AppTrans.message("tab_video"),
        iconNormal: Assets.dm.tabVideoNormal.path,
        iconSelected: Assets.dm.tabVideoSelected.path));

    /// 广场
    tabItems.add(MainTabItem(
        name: AppTrans.message("tab_square"),
        iconNormal: Assets.dm.tabSquareNormal.path,
        iconSelected: Assets.dm.tabSquareSelected.path));

    /// 我的
    tabItems.add(MainTabItem(
        name: AppTrans.message("tab_mine"),
        iconNormal: Assets.dm.tabMineNormal.path,
        iconSelected: Assets.dm.tabMineSelected.path));
  }
}
