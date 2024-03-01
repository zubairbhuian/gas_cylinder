import 'package:gas_cylinder/app/core/utils/urls.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String addreass;
  final String phone;
  final String photoURL;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.addreass,
    required this.phone,
    required this.photoURL,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['_id'],
      name: json['name'],
      email: json['email'],
      addreass: json['addreass'],
      phone: json['phone'],
      photoURL:'${Urls.baseURL}${json['photoURL']}',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'email': email,
      'addreass': addreass,
      'phone': phone,
      'photoURL': photoURL,
    };
  }
}