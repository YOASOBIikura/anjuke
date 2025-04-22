import 'package:anjuke/pages/home/index.dart';
import 'package:anjuke/pages/login.dart';
import 'package:anjuke/pages/not_found.dart';
import 'package:anjuke/pages/register.dart';
import 'package:anjuke/pages/room_add/index.dart';
import 'package:anjuke/pages/room_detail/index.dart';
import 'package:anjuke/pages/room_manage/index.dart';
import 'package:anjuke/pages/setting.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  // 定义路由名称
  static String home = "/";
  static String login = "/login";
  static String register = "/register";
  static String roomDetail = "/roomDetail/:roomId";
  static String setting = "/setting";
  static String roomManage = "/roomManage";
  static String roomAdd = "/roomAdd";

  // 定义路由处理函数
  static var _homeHandler = Handler(handlerFunc: handlerHomePageFunc);
  static var _loginHandler = Handler(handlerFunc: handlerLoginPageFunc);
  static var _registerHandler = Handler(handlerFunc: handlerRegisterPageFunc);
  static var _notFoundHandler = Handler(handlerFunc: handlerNotFoundPageFunc);
  static var _roomDetailHandler = Handler(
    handlerFunc: handlerRoomDetailPageFunc,
  );
  static var _settingHandler = Handler(handlerFunc: handlerSettingPageFunc);
  static var _roomManageHandler = Handler(handlerFunc: handlerRoomManagePageFunc);
  static var _roomAdd = Handler(handlerFunc: handlerRoomAddPageFunc);


  static Widget? handlerHomePageFunc(
    BuildContext? context,
    Map<String, List<String>> parameters,
  ) {
    return HomePage();
  }

  static Widget? handlerLoginPageFunc(
    BuildContext? context,
    Map<String, List<String>> parameters,
  ) {
    return LoginPage();
  }

  static Widget? handlerNotFoundPageFunc(
    BuildContext? context,
    Map<String, List<String>> parameters,
  ) {
    return NotFoundPage();
  }

  static Widget? handlerRoomDetailPageFunc(
    BuildContext? context,
    Map<String, List<String>> parameters,
  ) {
    return RoomDetailPage(roomId: parameters["roomId"]![0]);
  }

  static Widget? handlerRegisterPageFunc(
    BuildContext? context,
    Map<String, List<String>> parameters,
  ) {
    return RegisterPage();
  }

  static Widget? handlerSettingPageFunc(
    BuildContext? context,
    Map<String, List<String>> parameters,
  ) {
    return Setting();
  }

  static Widget? handlerRoomManagePageFunc(
    BuildContext? context,
    Map<String, List<String>> parameters,
  ){
    return RoomManage();
  }

  static Widget? handlerRoomAddPageFunc(
    BuildContext? context,
    Map<String, List<String>> parameters,
  ){
    return RoomAdd();
  }

  // 关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.define(register, handler: _registerHandler);
    router.define(setting, handler: _settingHandler);
    router.define(roomManage, handler: _roomManageHandler);
    router.define(roomAdd, handler: _roomAdd);
    router.notFoundHandler = _notFoundHandler;
  }
}
