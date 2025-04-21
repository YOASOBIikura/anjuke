import 'package:anjuke/pages/home/tab_profile/function_button_data.dart';
import 'package:anjuke/pages/home/tab_profile/function_button_widget.dart';
import 'package:flutter/material.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      child: Wrap(
        spacing: 80,
        runSpacing: 10,
        children: list.map((item) => FunctionButtonWidget(item: item)).toList(),
      ),
    );
  }
}
