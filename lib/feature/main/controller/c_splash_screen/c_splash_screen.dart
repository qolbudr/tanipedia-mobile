import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/database/db.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_main/c_main.dart';
import 'package:tanipedia_mobile/feature/main/main_route.dart';

class CSplashScreen extends GetxController {
  static CSplashScreen instance = Get.find();
  final db = Get.find<DatabaseHelper>();
  final oMain = Get.find<CMain>();

  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  void getUser() async {
    final user = await db.getUser();
    final token = await db.getToken();

    if (user != null && token != null) {
      oMain.setUserData(user, token);
      await Future.delayed(const Duration(seconds: 3), () => MainRoute.toMain());
    } else {
      await Future.delayed(const Duration(seconds: 3), () => MainRoute.toOnBoarding());
    }
  }
}
