class Urls {
  // common
  static String baseURL = 'http://10.0.2.2:3000';
  // static String baseURL = 'https://gas-app-backend.onrender.com';
  // auth
  static String config = '$baseURL/api/v1/auth/config';
  static String signUp = '$baseURL/api/v1/auth/sign_up';
  static String login = '$baseURL/api/v1/auth/login';
  static String forgetPassword = '$baseURL/api/v1/auth/forget_password';
  static String sendOtp = '$baseURL/api/v1/auth/send_otp';
  static String getUser = '$baseURL/api/v1/auth/get_user';
  static String updateUser = '$baseURL/api/v1/auth/update_user';
  static String changePassword = '$baseURL/api/v1/auth/change_password';
  static String changeProfilePicture = '$baseURL/api/v1/auth/update_profile_picture';
  // FAQs
  static String faqs = '$baseURL/api/v1/faqs';
  // Gas Banner
  static String gasBanner = '$baseURL/api/v1/gas_banner';
  // Privacy Policy
  static String privacyPolicy = '$baseURL/api/v1/privacy_policy';
  //Terms And Conditions
  static String termsAndConditions = '$baseURL/api/v1/terms_and_conditions';
  //Gas Cylinder Safety
  static String gasCylinderSafety = '$baseURL/api/v1/gas_cylinder_safety';
  // Notification
  static String notification = '$baseURL/api/v1/notification';
  static String product = '$baseURL/api/v1/my_product';

}
