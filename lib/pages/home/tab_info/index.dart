

import 'package:anjuke/pages/home/info/index.dart';
import 'package:flutter/material.dart';

class TabInfo extends StatefulWidget {
  const TabInfo({super.key});

  @override
  State<TabInfo> createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('资讯Tab'),
      ),
      body: ListView(
        children: [1, 2, 3, 4].map((item) => Info(isShow: false,)).toList(),
      ),
    );
  }
}

