class InfoItem {
  final String title;
  final String imgUri;
  final String source;
  final String time;
  final String navigationUri;

  const InfoItem({
    required this.title,
    required this.imgUri,
    required this.source,
    required this.time,
    required this.navigationUri,
  });
}

const List<InfoItem> infoData = [
  InfoItem(
    title: '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
    imgUri: 'assets/img/12.jpg',
    source: '新华网',
    time: '两天前',
    navigationUri: 'login',
  ),
  InfoItem(
    title: '置业选择 | 大理王宫 苍山洱海的古雅别院',
    imgUri: 'assets/img/13.jpg',
    source: '新华网',
    time: '一周前',
    navigationUri: 'login',
  ),
  InfoItem(
    title: '置业选择 | 安居小屋 花园洋房 清新别野',
    imgUri: 'assets/img/14.jpg',
    source: '新华网',
    time: '一周前',
    navigationUri: 'login',
  ),
];
