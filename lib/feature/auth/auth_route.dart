import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/auth/view/v_login/v_login.dart';
import 'package:tanipedia_mobile/feature/auth/view/v_register/v_register.dart';

class AuthRoute {
  static const prefix = '/auth';
  static const login = '$prefix/login';
  static const register = '$prefix/register';

  static List<GetPage> routes = [
    GetPage(name: login, page: () => VLogin()),
    GetPage(name: register, page: () => VRegister()),
    // GetPage(name: main, page: () => VMain()),
    // GetPage(name: consultant, page: () => VMainConsultant()),
    // GetPage(name: otp, page: () => VOTPMain()),
    // GetPage(name: scan, page: () => VScanBarcode()),
  ];

  static Future? toLogin() => Get.offAllNamed(login);
  static Future? toRegister() => Get.toNamed(register);
  // static Future? toMain() => Get.offAllNamed(main);
  // static Future? toConsultant() => Get.offAllNamed(consultant);
  // static Future? toOTP(VOTPMainParam param) => Get.toNamed(otp, arguments: param);
  // static Future? toScanBarcode() => Get.toNamed(scan);
}