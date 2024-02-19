import 'package:gas_cylinder/app/data/models/welcome_data_model.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  int pageIndex = 0;
  List<WelcomeDataModel> welcomeDataList = [
    WelcomeDataModel(
        img: 'assets/images/welcome/welcome_1.png',
        title: 'Welcome to Sue  Gas Cylinder',
        subTitle:
            " We're here to simplify your life, Get started with easy and reliable gas delivery."),
    WelcomeDataModel(
        img: "assets/images/welcome/welcome_2.png",
        title: "Cooking convenience at Your Door Step",
        subTitle:
            "With Sue Tru gas Delivery, we bring the gas to you. Say goodbye to gas station hassles."),
    WelcomeDataModel(
        img: "assets/images/welcome/welcome_3.png",
        title: "Never Run Out Again",
        subTitle:
            "Enjoy uninterrupted cooking with our easy gas delivery service. Start cooking, not worrying."),
  ];
}
