import 'package:anjuke/pages/home/tab_index/index_recommend_item.dart';
import 'package:flutter/material.dart';

class IndexRecommendItemWidget extends StatelessWidget {
  final IndexRecommendItem item;
  const IndexRecommendItemWidget({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(item.navigateUri);
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: (MediaQuery.of(context).size.width - 10.0 * 3) / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [Text(item.title), Text(item.subTitle)]),
            Image.asset(item.imageUri, width: 55.0),
          ],
        ),
      ),
    );
  }
}
