import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/services/controller/base_controller.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';
import 'package:gas_cylinder/app/data/models/banner_model.dart';
import 'package:gas_cylinder/app/data/models/base/base_model.dart';
import 'package:get/get.dart';

class GasController extends GetxController {
  int carouselIndex = 0;
  final TextEditingController searchController = TextEditingController();
  final CarouselController carouselController = CarouselController();
  List<BannerModel> bannerList = [];

  getBanner() async {
    BaseModel res =
        await BaseController.to.apiService.makeGetRequest(Urls.gasBanner);
    if (res.statusCode == 200) {
      bannerList = (res.data['data'] as List)
          .map((item) => BannerModel.fromJson(item))
          .toList();
      update();
    }
  }

  @override
  void onInit() {
    getBanner();
    super.onInit();
  }
}
