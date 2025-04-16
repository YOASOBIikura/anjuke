import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

List<String> listImg = [
  "assets/img/1.png",
  "assets/img/2.png",
  "assets/img/3.png",
];

class CommonSwipper extends StatelessWidget {
  const CommonSwipper({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 2.0,
        height: 200.0,
        autoPlay: true,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      items:
          listImg.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0), // 设置圆角半径
                    child: Image.asset(i, fit: BoxFit.cover),
                  ),
                );
              },
            );
          }).toList(),
    );
  }
}
