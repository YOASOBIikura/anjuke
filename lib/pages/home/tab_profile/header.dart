import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 95.0,
      child: Row(
        children: [
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.grey[50],
              backgroundImage: AssetImage('assets/img/my.png'),
            ),
          ),
        ],
      ),
    );
  }
}
