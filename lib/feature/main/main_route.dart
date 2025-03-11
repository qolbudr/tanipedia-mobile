import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/main/view/v_main/v_main.dart';
import 'package:tanipedia_mobile/feature/main/view/v_onboarding/v_onboarding.dart';
import 'package:tanipedia_mobile/feature/main/view/v_splash_screen/v_splash_screen.dart';

class MainRoute {
  static const prefix = '/main';
  static const splashScreen = '/splash_screen';
  static const onboarding = '$prefix/onboarding';
  static const chooseStore = '$prefix/choose_store';
  static const main = '$prefix/main';
  static const otp = '$prefix/otp';
  static const scan = '$prefix/scan';

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => VSplashScreen()),
    GetPage(name: onboarding, page: () => VOnboarding()),
    // GetPage(name: onboarding, page: () => VOnboarding()),
    GetPage(name: main, page: () => VMain()),
    // GetPage(name: consultant, page: () => VMainConsultant()),
    // GetPage(name: otp, page: () => VOTPMain()),
    // GetPage(name: scan, page: () => VScanBarcode()),
  ];

  static Future? toOnBoarding() => Get.offAllNamed(onboarding);
  static Future? toMain() => Get.offAllNamed(main);
  // static Future? toConsultant() => Get.offAllNamed(consultant);
  // static Future? toOTP(VOTPMainParam param) => Get.toNamed(otp, arguments: param);
  // static Future? toScanBarcode() => Get.toNamed(scan);
}