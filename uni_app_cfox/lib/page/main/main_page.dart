import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_app_base/main/base_main_page.dart';
import 'package:uni_app_cfox/page/main/main_controller.dart';

/// 测试主页面
class MainPage extends BaseMainPage<MainController> {
  @override
  final MainController controller = Get.put(MainController());

  MainPage({Key? key}) : super(key: key);
}
