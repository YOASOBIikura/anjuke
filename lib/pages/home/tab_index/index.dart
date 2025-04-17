import 'package:anjuke/pages/home/info/index.dart';
import 'package:anjuke/pages/home/tab_index/index_navigator.dart';
import 'package:anjuke/pages/home/tab_index/index_recommend.dart';
import 'package:anjuke/widgets/common_swipper.dart';
import 'package:anjuke/widgets/search_bar/index.dart';
import 'package:flutter/material.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MySearchBar(
          showLocation: true,
          showMap: true,
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          CommonSwipper(),
          IndexNavigator(),
          IndexRecommend(),
          Info(),
          Text('这里是内容区域'),
        ],
      ),
    );
  }
}
