import 'package:anjuke/routes.dart';
import 'package:flutter/material.dart';

class FunctionButtonDataItem {
  final String imageUrl;
  final String title;
  final Function? onTabHandle;

  FunctionButtonDataItem({
    required this.imageUrl,
    required this.title,
    required this.onTabHandle,
  });
}

List<FunctionButtonDataItem> list = [
  FunctionButtonDataItem(
    imageUrl: 'assets/img/17.png',
    title: '看房记录',
    onTabHandle: null,
  ),
  FunctionButtonDataItem(
    imageUrl: 'assets/img/18.png',
    title: '我的订单',
    onTabHandle: (context){
      return Navigator.of(context).pushNamed(Routes.roomAdd);
    },
  ),
  FunctionButtonDataItem(
    imageUrl: 'assets/img/19.png',
    title: '我的收藏',
    onTabHandle: null,
  ),
  FunctionButtonDataItem(
    imageUrl: 'assets/img/20.png',
    title: '身份认证',
    onTabHandle: null,
  ),
  FunctionButtonDataItem(
    imageUrl: 'assets/img/21.png',
    title: '联系我们',
    onTabHandle: null,
  ),
  FunctionButtonDataItem(
    imageUrl: 'assets/img/22.png',
    title: '电子合同',
    onTabHandle: null,
  ),
  FunctionButtonDataItem(
    imageUrl: 'assets/img/23.png',
    title: '房屋管理',
    onTabHandle: (context){
      return Navigator.of(context).pushNamed(Routes.roomManage);
    },
  ),
  FunctionButtonDataItem(
    imageUrl: 'assets/img/24.png',
    title: '钱包',
    onTabHandle: null,
  ),
];
