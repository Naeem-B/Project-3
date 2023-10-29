class MeModel {
  String icon;
  String name;

  MeModel({required this.icon, required this.name});

  factory MeModel.fromJson(Map json) {
    return MeModel (
    icon:  json['icon'],
   
    name:  json['name'],
    );
   
  }
}
