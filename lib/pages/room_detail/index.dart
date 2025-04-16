import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String roomId;
  const RoomDetailPage({required this.roomId, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('roomId: $roomId')));
  }
}
