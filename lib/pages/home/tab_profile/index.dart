import 'package:anjuke/pages/home/tab_profile/advertising.dart';
import 'package:anjuke/pages/home/tab_profile/function_button.dart';
import 'package:anjuke/pages/home/tab_profile/header.dart';
import 'package:anjuke/routes.dart';
import 'package:flutter/material.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('我的'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.setting);
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(children: [Header(), FunctionButton(), Advertising()]),
    );
  }
}
