class IndexRecommendItem {
  String title;
  String subTitle;
  String imageUri;
  String navigateUri;

  IndexRecommendItem(
    this.title,
    this.subTitle,
    this.imageUri,
    this.navigateUri,
  );
}

List<IndexRecommendItem> indexRecommendData = [
  IndexRecommendItem('家住回龙观', '归属的感觉', 'assets/img/8.png', 'login'),
  IndexRecommendItem('宜居四五环', '大都市生活', 'assets/img/9.png', 'login'),
  IndexRecommendItem('喧嚣三里屯', '繁华的背后', 'assets/img/10.png', 'login'),
  IndexRecommendItem('比邻十号线', '地铁心连心', 'assets/img/11.png', 'login'),
];
