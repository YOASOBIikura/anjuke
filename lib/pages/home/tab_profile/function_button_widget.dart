import 'package:anjuke/pages/home/tab_profile/function_button_data.dart';
import 'package:flutter/material.dart';

class FunctionButtonWidget extends StatelessWidget {
  final FunctionButtonDataItem item;
  FunctionButtonWidget({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(item.onTabHandle != Null){
          item.onTabHandle!(context);
        }
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(item.imageUrl, height: 70, width: 70),
            Text(item.title),
          ],
        ),
      ),
    );
  }
}
