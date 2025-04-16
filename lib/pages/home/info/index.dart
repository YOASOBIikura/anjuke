

import 'package:anjuke/pages/home/info/info_item.dart';
import 'package:anjuke/pages/home/info/item_widget.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {

  final bool isShow;
  final List<InfoItem> list;

  const Info({this.isShow = true, this.list = infoData, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if(isShow)Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            child: Text('最新资讯', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),
          ),
          Column(
            children: infoData.map((item) => ItemWidget(item: item)).toList(),
          )
        ],
      ),
    );
  }
}



