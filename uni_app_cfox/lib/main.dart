import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uni_app_cfox/app/app_service.dart';
import 'package:uni_app_cfox/app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  log("【starting services ...】");
  await Get.putAsync(() => AppService().initService());
  log("【All services started ...】");
  runApp(const MyApp());
}
