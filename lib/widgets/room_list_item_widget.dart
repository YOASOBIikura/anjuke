import 'package:anjuke/pages/home/tab_search/data_list.dart';
import 'package:anjuke/widgets/common_tag.dart';
import 'package:flutter/material.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;
  const RoomListItemWidget({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Image.asset(data.imgUri, width: 132.5, height: 100),
          Padding(padding: EdgeInsets.all(5)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(data.subTitle),
                Wrap(
                  children: data.tags.map((item) => CommonTag(item)).toList(),
                ),
                Text(
                  '${data.price} 元/月',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
