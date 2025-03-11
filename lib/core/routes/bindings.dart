import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/api/api.dart';
import 'package:tanipedia_mobile/core/database/db.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_main/c_main.dart';
import 'package:tanipedia_mobile/repositories/r_auth/r_auth.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DatabaseHelper(), fenix: true);
    Get.lazyPut(() => IApi(), fenix: true);
    Get.lazyPut(() => RIAuth(), fenix: true);
    // Get.lazyPut(() => RISalary(), fenix: true);

    Get.put(CMain(), permanent: true);
    // Get.put(CMainConsultant(), permanent: true);
    // Get.put(CDashboard(), permanent: true);
    // Get.put(CPosCashier(), permanent: true);
  }
}