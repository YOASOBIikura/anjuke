

import 'package:anjuke/widgets/common_form_item.dart';
import 'package:flutter/material.dart';

class CommonRadioFormItem extends StatelessWidget {
  final String label;
  final List<String> options;
  final int value;
  final ValueChanged<int> onChange;
  const CommonRadioFormItem({super.key, required this.label, required this.options, required this.value, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(label: label, contextBuilder: (context){
      return Container(
        child: Row(
          children: [
            List.generate(options.length, (index) => Row()),
          ],
        ),
      );
    },);
  }
}



