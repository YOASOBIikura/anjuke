

import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  final String title;
  const CommonTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
    );
  }
}


