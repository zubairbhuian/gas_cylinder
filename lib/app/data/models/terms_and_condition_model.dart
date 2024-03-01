class TermsAndConditionModel {
  final String id;
  final String title;
  final String description;

  TermsAndConditionModel({
    required this.id,
    required this.title,
    required this.description,
  });

  factory TermsAndConditionModel.fromJson(Map<String, dynamic> json) {
    return TermsAndConditionModel(
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
