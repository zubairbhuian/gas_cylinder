import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../services/base/preferences.dart';

class RouteWlcomMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    kLogger.e(Preferences.token.isNotEmpty);
    kLogger.e(Preferences.token);
    if (Preferences.token.isNotEmpty) {
      // user token is empty
      // return should be login screen
      kLogger.e("user token is empty");

      return const RouteSettings(name: Routes.ENTRY_POINT);
    } else if (!Preferences.isFirstTime) {
      // user is Signin
      // return should be application screen
      // kLogger.e("user has token");
      return const RouteSettings(name: Routes.SIGN_IN);
    } else {
      return null;
    }
  }
}
