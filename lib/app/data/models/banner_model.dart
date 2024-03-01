import 'package:gas_cylinder/app/core/utils/urls.dart';

class BannerModel {
  final String id;
  final String imgURL;

  BannerModel({
    required this.id,
    required this.imgURL,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['_id'],
      imgURL: '${Urls.baseURL}${json['imgURL']}',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'imgURL': imgURL,
    };
  }
}
