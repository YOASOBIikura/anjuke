import 'package:flutter/material.dart';
import 'package:anjuke/widgets/page_content.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: PageContent(name: "登录页"));
  }
}
