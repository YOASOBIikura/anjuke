
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonPicker {
  static Future<int?> showPicker({BuildContext? context, List<String>? options, int? value}){
    return showCupertinoModalPopup<int>(context: context!, builder: (BuildContext context){
      var  controller = FixedExtentScrollController(initialItem: value!);
      return Container(
        color: Colors.cyanAccent,
        height: 300,
        child: Column(
          children: [
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text('取消', style: TextStyle(fontWeight: FontWeight.w600),)),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop(controller.selectedItem);
                  }, child: Text('确定', style: TextStyle(fontWeight: FontWeight.w600),)),
                ],
              ),
            ),
            Expanded(child: CupertinoPicker(
              scrollController: controller ,
              itemExtent: 32.0,
              onSelectedItemChanged: (val){},
              children: options!.map((item) =>
                  Text(item)).toList()
            )),
          ],
        ),
      );
    });
  }
}

