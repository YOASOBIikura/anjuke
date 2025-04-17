import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color color;
  final Color backgroundColor;

  const CommonTag.origin(
    this.title, {
    this.color = Colors.black,
    this.backgroundColor = Colors.grey,
    super.key,
  });

  factory CommonTag(String title) {
    switch (title) {
      case '近地铁':
        return CommonTag.origin(
          title,
          color: Colors.redAccent,
          backgroundColor: Colors.blueAccent,
        );
      case '集中供暖':
        return CommonTag.origin(
          title,
          color: Colors.green,
          backgroundColor: Colors.greenAccent,
        );
      case '随时看房':
        return CommonTag.origin(
          title,
          color: Colors.pink,
          backgroundColor: Colors.purple,
        );
      case '新上':
        return CommonTag.origin(
          title,
          color: Colors.teal,
          backgroundColor: Colors.lime,
        );
      default:
        return CommonTag.origin(title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 1),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(title, style: TextStyle(fontSize: 10.0, color: color)),
    );
  }
}
