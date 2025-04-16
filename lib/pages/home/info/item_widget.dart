

import 'package:anjuke/pages/home/info/info_item.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {

  final InfoItem item;
  const ItemWidget({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(item.imgUri, width: 120, height: 90,),
          Padding(padding: EdgeInsets.all(5)),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item.title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item.source, style: TextStyle(color: Colors.black54),),
                  Text(item.time, style: TextStyle(color: Colors.black54),)
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}



