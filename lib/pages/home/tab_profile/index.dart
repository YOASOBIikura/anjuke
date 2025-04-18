import 'package:anjuke/pages/home/tab_profile/header.dart';
import 'package:flutter/material.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('setting');
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(children: [
        Header(),
        Text('这里是内容区')
        ]),
    );
  }
}
