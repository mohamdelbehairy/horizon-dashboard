class TablesBodyModel {
  final String title, image1, dateTime;
  final String? image2, image3, persentage;

  TablesBodyModel(
      {required this.title,
      required this.image1,
      required this.dateTime,
      this.image2,
      this.image3,
      this.persentage});
}
