import 'package:flutter/widgets.dart';

class IndexNavigatorItem {
  final String title;
  final String imgURL;
  final Function(BuildContext context) onTap;

  IndexNavigatorItem(this.title, this.imgURL, this.onTap);
}

List<IndexNavigatorItem> navigatorItemList = [
  IndexNavigatorItem(
    '整租',
    'assets/img/4.png',
    (BuildContext context) =>
        Navigator.of(context).pushReplacementNamed('login'),
  ),
  IndexNavigatorItem(
    '合租',
    'assets/img/5.png',
    (BuildContext context) =>
        Navigator.of(context).pushReplacementNamed('login'),
  ),
  IndexNavigatorItem(
    '地图找房',
    'assets/img/6.png',
    (BuildContext context) =>
        Navigator.of(context).pushReplacementNamed('login'),
  ),
  IndexNavigatorItem(
    '去出租',
    'assets/img/7.png',
    (BuildContext context) =>
        Navigator.of(context).pushReplacementNamed('login'),
  ),
];
