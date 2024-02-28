class UserModel {
  final String id;
  final String name;
  final String email;
  final String address;
  final String phone;
  final String photoURL;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
    required this.photoURL,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      address: json['address'],
      phone: json['phone'],
      photoURL: json['photoURL'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'address': address,
      'phone': phone,
      'photoURL': photoURL,
    };
  }
}