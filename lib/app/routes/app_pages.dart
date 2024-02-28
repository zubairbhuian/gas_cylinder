import 'package:gas_cylinder/app/core/middleware/router_welcome.dart';
import 'package:get/get.dart';

import '../modules/entryPoint/bindings/entry_point_binding.dart';
import '../modules/entryPoint/views/entry_point_view.dart';
import '../modules/faqs/bindings/faqs_binding.dart';
import '../modules/faqs/views/faqs_view.dart';
import '../modules/forgetPasswort/bindings/forget_passwort_binding.dart';
import '../modules/forgetPasswort/views/forget_passwort_view.dart';
import '../modules/gas/bindings/gas_binding.dart';
import '../modules/gas/views/gas_view.dart';
import '../modules/gasCylinderSafety/bindings/gas_cylinder_safety_binding.dart';
import '../modules/gasCylinderSafety/views/gas_cylinder_safety_view.dart';
import '../modules/getHelp/bindings/get_help_binding.dart';
import '../modules/getHelp/views/get_help_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/order/bindings/order_binding.dart';
import '../modules/order/views/order_view.dart';
import '../modules/ordersHistory/bindings/orders_history_binding.dart';
import '../modules/ordersHistory/views/orders_history_view.dart';
import '../modules/privacyPolicy/bindings/privacy_policy_binding.dart';
import '../modules/privacyPolicy/views/privacy_policy_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/signIn/bindings/sign_in_binding.dart';
import '../modules/signIn/views/sign_in_view.dart';
import '../modules/signUp/bindings/sign_up_binding.dart';
import '../modules/signUp/views/sign_up_view.dart';
import '../modules/termsAndconditions/bindings/terms_andconditions_binding.dart';
import '../modules/termsAndconditions/views/terms_andconditions_view.dart';
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
      middlewares: [RouteWlcomMiddleware()]
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
    GetPage(
      name: _Paths.ORDERS_HISTORY,
      page: () => const OrdersHistoryView(),
      binding: OrdersHistoryBinding(),
    ),
    GetPage(
      name: _Paths.GAS_CYLINDER_SAFETY,
      page: () => const GasCylinderSafetyView(),
      binding: GasCylinderSafetyBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.GET_HELP,
      page: () => const GetHelpView(),
      binding: GetHelpBinding(),
    ),
    GetPage(
      name: _Paths.FAQS,
      page: () => const FaqsView(),
      binding: FaqsBinding(),
    ),
    GetPage(
      name: _Paths.PRIVACY_POLICY,
      page: () => const PrivacyPolicyView(),
      binding: PrivacyPolicyBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_ANDCONDITIONS,
      page: () => const TermsAndconditionsView(),
      binding: TermsAndconditionsBinding(),
    ),
  ];
}
