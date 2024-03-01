class NotificationModel {
  final String id;
  final String title;
  final String description;
  final String icon;

  NotificationModel({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      icon: json['icon'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'description': description,
      'icon': icon,
    };
  }
}
