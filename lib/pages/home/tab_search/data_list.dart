class RoomListItemData {
  final String id;
  final String title;
  final String subTitle;
  final String imgUri;
  final List<String> tags;
  final int price;

  const RoomListItemData({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.imgUri,
    required this.tags,
    required this.price,
  });
}

const List<RoomListItemData> RoomDataList = [
  RoomListItemData(
    title: '朝阳门南大街 2室1厅 8300元',
    subTitle: '二室/114/东|北/朝阳门南大街',
    imgUri: 'assets/img/12.jpg',
    price: 1200,
    id: 'roomDetail/1',
    tags: ['近地铁', '集中供暖', '新上', '随时看房'],
  ),
  RoomListItemData(
    title: '整租•CBD总部公寓二期 临近国贸 精装修 随时拎包入住',
    subTitle: '一室/110/西/cBD总部公寓二期',
    imgUri: 'assets/img/13.jpg',
    price: 6000,
    id: 'roomDetail/2',
    tags: ['近地铁', '随时看房'],
  ),
  RoomListItemData(
    title: '朝阳门南大街 2室1厅 8300元',
    subTitle: '二室/114/东|北/朝阳门南大街',
    imgUri: 'assets/img/14.jpg',
    price: 1200,
    id: 'roomDetail/1',
    tags: ['近地铁', '集中供暖', '新上', '随时看房'],
  ),
];
