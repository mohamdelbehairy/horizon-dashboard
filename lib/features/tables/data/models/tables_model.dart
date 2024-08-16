class TablesBodyModel {
  final String title, dateTime;
  final String? image1, image2, image3, persentage, value;

  TablesBodyModel(
      {required this.title,
      this.image1,
      required this.dateTime,
      this.image2,
      this.image3,
      this.persentage,
      this.value});
}
