

import 'package:anjuke/widgets/common_floating_action_button.dart';
import 'package:anjuke/widgets/common_form_item.dart';
import 'package:anjuke/widgets/common_title.dart';
import 'package:flutter/material.dart';

class RoomAdd extends StatelessWidget {
  const RoomAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingActionButton('房源发布'),
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('添加房屋信息'),
      ),
      body: ListView(
        children: [
          CommonTitle(title: '房源信息'),
          CommonFormItem(label: '小区', contextBuilder: (context){
             return Container(
               child: GestureDetector(
                 behavior: HitTestBehavior.translucent,
                 onTap: (){

                 },
                 child: Container(
                   height: 40,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('请选择小区', style: TextStyle(fontSize: 16.0)),
                       Icon(Icons.keyboard_arrow_right)
                     ],
                   ),
                 ),
               ),
             );
          },),
          CommonTitle(title: '房屋头像'),
          CommonTitle(title: '房屋标题'),
          CommonTitle(title: '房屋配置'),
          CommonTitle(title: '房屋描述'),
        ],
      )
    );
  }
}

