import 'package:get/get.dart';

import '../modules/entryPoint/bindings/entry_point_binding.dart';
import '../modules/entryPoint/views/entry_point_view.dart';
import '../modules/forgetPasswort/bindings/forget_passwort_binding.dart';
import '../modules/forgetPasswort/views/forget_passwort_view.dart';
import '../modules/gas/bindings/gas_binding.dart';
import '../modules/gas/views/gas_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/order/bindings/order_binding.dart';
import '../modules/order/views/order_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/signIn/bindings/sign_in_binding.dart';
import '../modules/signIn/views/sign_in_view.dart';
import '../modules/signUp/bindings/sign_up_binding.dart';
import '../modules/signUp/views/sign_up_view.dart';
import '../modules/verifyEmail/bindings/verify_email_binding.dart';
import '../modules/verifyEmail/views/verify_email_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORT,
      page: () => const ForgetPasswortView(),
      binding: ForgetPasswortBinding(),
    ),
    GetPage(
      name: _Paths.ENTRY_POINT,
      page: () => const EntryPointView(),
      binding: EntryPointBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_EMAIL,
      page: () => const VerifyEmailView(),
      binding: VerifyEmailBinding(),
    ),
    GetPage(
      name: _Paths.GAS,
      page: () => const GasView(),
      binding: GasBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => const OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
  ];
}
