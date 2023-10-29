import 'package:flutter/foundation.dart';

class HomeModel {
  String photo;
  String name;
  String size;
  String date;

  HomeModel(
      {required this.photo,
      required this.name,
      required this.size,
      required this.date});

  factory HomeModel.fromJson(Map json) {
    return HomeModel(
        photo: json['photo'],
        name: json['name'],
        size: json['size'],
        date: json['date']);
  }
}
