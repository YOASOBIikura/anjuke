import 'package:flutter/material.dart';
import 'package:anjuke/widgets/page_content.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("404")),
      body: Center(child: Text("您访问的页面不存在!")),
    );
  }
}
