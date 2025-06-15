class DataModel {
  final String id;
  final String name;
  final String phone;
  final String country;
  final String image;
  final String gender;
  final String date;
  final String userId;
  DataModel(this.id, this.name, this.phone, this.country, this.image,
      this.gender, this.date, this.userId);

  factory DataModel.fromjson(jsondata) {
    return DataModel(
        jsondata["email"] ?? '',
        jsondata["name"] ?? '',
        jsondata["phone"] ?? '',
        jsondata["cuontry"] ?? '',
        jsondata["image"] ?? '',
        jsondata["gender"] ?? '',
        jsondata["date"] ?? '',
        jsondata["userId"] ?? '');
  }
}
