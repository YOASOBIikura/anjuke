

import 'package:anjuke/widgets/common_floating_action_button.dart';
import 'package:flutter/material.dart';

class RoomAdd extends StatelessWidget {
  const RoomAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingActionButton('添加房屋信息'),
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('添加房屋信息'),
      ),
    );
  }
}

