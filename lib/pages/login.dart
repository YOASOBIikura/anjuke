import 'package:anjuke/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录'), backgroundColor: Colors.cyanAccent),
      body: SafeArea(
        minimum: EdgeInsets.all(30),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              obscureText: !showPassword,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                suffix: IconButton(
                  icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.cyanAccent,
              ),
              onPressed: () {},
              child: Text('登录', style: TextStyle(color: Colors.white)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('还没有账号,'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.register);
                  },
                  child: Text(
                    '去注册~',
                    style: TextStyle(color: Colors.cyanAccent),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
