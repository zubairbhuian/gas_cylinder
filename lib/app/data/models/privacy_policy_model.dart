//privacy_policy_
class PrivacyPolicyModel {
  final String id;
  final String title;
  final String description;

  PrivacyPolicyModel({
    required this.id,
    required this.title,
    required this.description,
  });

  factory PrivacyPolicyModel.fromJson(Map<String, dynamic> json) {
    return PrivacyPolicyModel(
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
