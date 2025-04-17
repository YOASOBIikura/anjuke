import 'package:anjuke/pages/home/tab_search/data_list.dart';
import 'package:anjuke/widgets/room_list_item_widget.dart';
import 'package:anjuke/widgets/search_bar/index.dart';
import 'package:flutter/material.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({super.key});

  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MySearchBar(),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(height: 40, child: Text('filterBar')),
          Expanded(
            child: ListView(
              children:
                  RoomDataList.map(
                    (data) => RoomListItemWidget(data: data),
                  ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
