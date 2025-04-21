import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      color: Colors.cyanAccent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(left: 10, right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.grey[50],
              backgroundImage: AssetImage('assets/img/my.png'),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('登录/注册', style: TextStyle(fontSize: 20)),
                Text('登录以后可以体验更多'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
