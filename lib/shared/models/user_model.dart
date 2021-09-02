import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  UserModel({required this.name, this.photoURL});

  //converter string em map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map["name"], photoURL: map["photoURL"]);
  }
  //converter string em json
  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  //transforma class em to map que retorna um mapa de string ou objeto map
  Map<String, dynamic> toMap() => {
        "name": name,
        "photoURL": photoURL,
      };
  //convertendo o objeto tomap em um string
  String toJson() => jsonEncode(toMap());
}
