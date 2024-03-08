// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';

class ProductModel {
  final String id;
  final String name;
  final String description;
  final String weight;
  final Color color;
  final String price;
  final String refillprice;
  final String rating;
  final String img1;
  final String img2;
  final String img3;
  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.weight,
    required this.color,
    required this.price,
    required this.refillprice,
    required this.rating,
    required this.img1,
    required this.img2,
    required this.img3,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['_id'],
      name: json['name'],
      description: json['description'],
      weight: json['weight'].toString(),
      color:Color(int.parse("0xff${json['color']}")),
      price: json['price'].toString(),
      refillprice: json['Refillprice'].toString(),
      rating: json['rating'].toString(),
      img1:'${Urls.baseURL}${json['img1']}',
      img2:'${Urls.baseURL}${json['img2']}',
      img3:'${Urls.baseURL}${json['img3']}',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'description': description,
      'weight': weight,
      'color': color,
      'price': price,
      'Refillprice': refillprice,
      'rating': rating,
      'img1': img1,
      'img2': img2,
      'img3': img3,
    };
  }
}
