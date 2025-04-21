import 'package:anjuke/pages/home/info/index.dart';
import 'package:flutter/material.dart';

class Advertising extends StatelessWidget {
  const Advertising({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: Image.asset('assets/img/adv.png'),
          ),
          Info(),
        ],
      ),
    );
  }
}
