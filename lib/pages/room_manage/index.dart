
import 'package:anjuke/widgets/common_floating_action_button.dart';
import 'package:flutter/material.dart';

import '../home/info/index.dart';

class RoomManage extends StatefulWidget {
  const RoomManage({super.key});

  @override
  State<RoomManage> createState() => _RoomManageState();
}

class _RoomManageState extends State<RoomManage> with SingleTickerProviderStateMixin {

  static const List<Tab> myTabs = [
    Tab(text: '已租',),
    Tab(text: '未租',)
  ];

  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose(){
    if(_tabController != Null){
      _tabController!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingActionButton('房源发布'),
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('房屋管理'),
        bottom: TabBar(tabs: myTabs, controller: _tabController,),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab)=> Info(isShow: false)).toList()
      ),
    );
  }
}

