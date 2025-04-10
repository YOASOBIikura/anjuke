import 'package:flutter/material.dart';
import 'package:anjuke/widgets/page_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: PageContent(name: "首页"));
  }
}
