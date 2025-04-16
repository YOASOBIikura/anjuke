import 'package:anjuke/routes.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPassword = false;
  bool showVerifyPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('注册'), backgroundColor: Colors.cyanAccent),
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
            TextField(
              obscureText: !showPassword,
              decoration: InputDecoration(
                labelText: '确认密码',
                hintText: '请输入确认密码',
                suffix: IconButton(
                  icon: Icon(
                    showVerifyPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      showVerifyPassword = !showVerifyPassword;
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
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('已有账号,'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.login);
                  },
                  child: Text(
                    '去登录~',
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
