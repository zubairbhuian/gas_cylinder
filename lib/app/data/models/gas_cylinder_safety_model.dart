class GasCylinderSafetyModel {
  final String id;
  final String title;
  final String description;
  final String imgURL;

  GasCylinderSafetyModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imgURL,
  });

  factory GasCylinderSafetyModel.fromJson(Map<String, dynamic> json) {
    return GasCylinderSafetyModel(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      imgURL: json['imgURL'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'description': description,
      'imgURL': description,
    };
  }
}
