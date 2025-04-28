

import 'package:anjuke/widgets/common_floating_action_button.dart';
import 'package:anjuke/widgets/common_form_item.dart';
import 'package:anjuke/widgets/common_radio_form_item.dart';
import 'package:anjuke/widgets/common_select_form_item.dart';
import 'package:anjuke/widgets/common_title.dart';
import 'package:flutter/material.dart';

class RoomAdd extends StatefulWidget {
  const RoomAdd({super.key});

  @override
  State<RoomAdd> createState() => _RoomAddState();
}

class _RoomAddState extends State<RoomAdd> {
  int rentType = 0;
  int decorationType = 0;

  int roomType = 0;
  int floorType = 0;
  int orientation = 0;
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
          CommonFormItem(label: '租金', hintText: '请输入租金', suffixText: '元/月'),
          CommonFormItem(label: '大小', hintText: '请输入房屋大小', suffixText: '平方米'),
          CommonRadioFormItem(
            label: '租赁方式',
            options: ['整租', '合租'],
            value: rentType,
            onChange: (index){
              setState(() {
                rentType = index! ;
              });
            },
          ),
          CommonSelectFormItem(label: '户型', value: roomType, onChange: (val){
            setState(() {
              roomType = val;
            });
          }, options: ['一室', '二室', '三室', '四室'],),
          CommonSelectFormItem(label: '楼层', value: floorType, onChange: (val){
            setState(() {
              floorType = val;
            });
          }, options: ['高楼层', '中楼层', '低楼层'],),
          CommonSelectFormItem(label: '朝向', value: orientation, onChange: (val){
            setState(() {
              orientation = val;
            });
          }, options: ['东', '南', '西', '北'],),
          CommonRadioFormItem(
            label: '装修',
            options: ['精装', '简装'],
            value: decorationType,
            onChange: (index){
              setState(() {
                decorationType = index! ;
              });
            },
          ),
          CommonTitle(title: '房屋头像'),
          CommonTitle(title: '房屋标题'),
          CommonTitle(title: '房屋配置'),
          CommonTitle(title: '房屋描述'),
        ],
      )
    );
  }
}

