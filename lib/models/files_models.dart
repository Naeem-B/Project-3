

class FilesModel {
  String photo;
  String name;
  String size;
  String date;

  FilesModel(
      {required this.photo,
      required this.name,
      required this.size,
      required this.date});

  factory FilesModel.fromJson(Map json) {
    return FilesModel(
        photo: json['photo'],
        name: json['name'],
        size: json['size'],
        date: json['date']);
  }





}