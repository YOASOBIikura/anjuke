
import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {
  final String label;
  final Widget Function(BuildContext context)? contextBuilder;
  final Widget? suffix;
  final String? suffixText;
  final String? hintText;
  final ValueChanged? onChanged;
  final TextEditingController? controller;
  const CommonFormItem({required this.label, this.contextBuilder, this.suffix, this.suffixText, this.hintText, this.onChanged, this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14 ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Theme.of(context).dividerColor
          )
        )
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            child: Text(label, style: TextStyle(
               fontSize: 16,
              color: Colors.black87
            ),),
          ),
          Expanded(child:
          contextBuilder != null
              ? contextBuilder!(context)
              : TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                ),
              )),
          if(suffix != null) suffix!,
          if(suffix == null && suffixText != null) Text(suffixText!),
        ],
      ),
    );
  }
}


