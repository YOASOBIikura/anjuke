import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      padding: EdgeInsets.only(left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              backgroundImage: AssetImage('assets/img/my.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed('login'),
                    child: Text('登录', style: TextStyle(fontSize: 20),)),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed('register'),
                    child: Text('/注册', style: TextStyle(fontSize: 20),),
                  )
                ],
              ),
              Text('登录后可以体验更多')
            ],
          )
        ],
      ),
    );
  }
}
