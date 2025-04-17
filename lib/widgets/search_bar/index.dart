import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  final bool? showLocation;
  final Function? gobackCallback;
  final String? inputValue;
  final String? defaultInputValue;
  final Function? onCancel;
  final bool? showMap;
  final Function? onSearch;
  final ValueChanged<String>? onSearchSubmit;

  const MySearchBar({
    this.showLocation,
    this.gobackCallback,
    this.inputValue,
    this.defaultInputValue,
    this.onCancel,
    this.showMap,
    this.onSearch,
    this.onSearchSubmit,
    super.key,
  });

  @override
  State<MySearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (widget.showLocation!)
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.room, color: Colors.green, size: 16),
                    Text(
                      '北京',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          if (widget.gobackCallback != null || true)
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () => widget.gobackCallback,
                child: Icon(Icons.chevron_left, color: Colors.black),
              ),
            ),
          Expanded(
            child: Container(
              height: 34,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(17.0),
              ),
              padding: EdgeInsets.only(right: 10),
              child: TextField(
                style: TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '请输入搜索词',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                  contentPadding: EdgeInsets.only(top: 1, left: -10),
                  suffixIcon: Icon(Icons.clear, size: 18, color: Colors.grey),
                  icon: Padding(
                    padding: EdgeInsets.only(top: 1, left: 5),
                    child: Icon(Icons.search, size: 18.0, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
          if (widget.onCancel != null || true)
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () => widget.onCancel,
                child: Text(
                  '取消',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
          if (widget.showMap != null || true)
            Image.asset('assets/img/15.png', width: 25, height: 25),
        ],
      ),
    );
  }
}
