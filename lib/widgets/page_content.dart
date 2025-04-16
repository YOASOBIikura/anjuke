import "package:anjuke/pages/home/tab_index/index.dart";
import "package:anjuke/routes.dart";
import "package:flutter/material.dart";

// tab内容区
List<Widget> tabViewList = [
  TabIndex(),
  PageContent(name: '搜索'),
  PageContent(name: '资讯'),
  PageContent(name: '我的'),
];

// tabItem
List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: '搜索', icon: Icon(Icons.search)),
  BottomNavigationBarItem(label: '咨询', icon: Icon(Icons.info)),
  BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle)),
];

class PageContent extends StatelessWidget {
  const PageContent({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('当前页面: $name'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.home);
            },
            child: Text(Routes.home),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.login);
            },
            child: Text(Routes.login),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/roomDetail/2222');
            },
            child: Text('房屋详情页, id:2222'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/aaaaaa');
            },
            child: Text("不存在的页面"),
          ),
        ],
      ),
    );
  }
}
