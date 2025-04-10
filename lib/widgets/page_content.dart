import "package:flutter/material.dart";

class PageContent extends StatelessWidget {
  const PageContent({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('当前页面: $name')));
  }
}
