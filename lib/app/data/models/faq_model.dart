// ignore_for_file: public_member_api_docs, sort_constructors_first
class FAQModel {
  final String id;
  final String title;
  final String description;

  FAQModel({
    required this.id,
    required this.title,
    required this.description,
  });

  factory FAQModel.fromJson(Map<String, dynamic> json) {
    return FAQModel(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'description': description,
    };
  }
}
