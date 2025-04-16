import 'package:anjuke/pages/home/tab_index/index_navigator.dart';
import 'package:anjuke/pages/home/tab_index/index_recommend.dart';
import 'package:anjuke/widgets/common_swipper.dart';
import 'package:flutter/material.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabIndex'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: ListView(
        children: [
          CommonSwipper(),
          IndexNavigator(),
          IndexRecommend(),
          Text('这里是内容区域'),
        ],
      ),
    );
  }
}
