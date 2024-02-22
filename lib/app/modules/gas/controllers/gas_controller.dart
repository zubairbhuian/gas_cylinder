import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GasController extends GetxController {
  int carouselIndex = 0;
  final TextEditingController searchController = TextEditingController();
  final CarouselController carouselController = CarouselController();
}
