import 'package:anjuke/pages/home/tab_index/index_navigator_item.dart';
import 'package:flutter/material.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            navigatorItemList
                .map(
                  (item) => InkWell(
                    onTap: () {
                      item.onTap(context);
                    },
                    child: Column(
                      children: [
                        Image.asset(item.imgURL, width: 47.5),
                        Text(
                          item.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
