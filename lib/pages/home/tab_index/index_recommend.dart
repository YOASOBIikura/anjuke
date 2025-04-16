import 'package:anjuke/pages/home/tab_index/index_recommend_item.dart';
import 'package:anjuke/pages/home/tab_index/index_recommend_item_widget.dart';
import 'package:flutter/material.dart';

class IndexRecommend extends StatelessWidget {
  const IndexRecommend({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(color: Colors.white30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '房屋推荐',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text('更多', style: TextStyle(color: Colors.black54)),
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children:
                indexRecommendData
                    .map((item) => IndexRecommendItemWidget(item: item))
                    .toList(),
          ),
        ],
      ),
    );
  }
}
