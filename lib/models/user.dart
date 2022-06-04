import 'package:data_fetch_example/models/address.dart';

class User {
  final int id;
  final String name;
  final String? email;
  final Address address;

  User({
    required this.id,
    required this.name,
    this.email,
    required this.address,
  });
  // factory User.fr=this.mJson(Map<String, dynamic> json) {
  //   return User(
  //     id: json["id"],
  //     name: json["name"],
  //     email: json["email"],
  //     address: json["address"],
  //   );
  // }
  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        email = json["email"],
        address = Address.fromJson(json["address"]);
}
