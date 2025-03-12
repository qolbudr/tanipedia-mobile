import 'package:get/get.dart';
import 'package:tanipedia_mobile/core/api/api.dart';
import 'package:tanipedia_mobile/core/database/db.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_main/c_main.dart';
import 'package:tanipedia_mobile/repositories/r_auth/r_auth.dart';
import 'package:tanipedia_mobile/repositories/r_bakulku/r_bakulku.dart';
import 'package:tanipedia_mobile/repositories/r_edukasi/r_edukasi.dart';
import 'package:tanipedia_mobile/repositories/r_pohon_dana/r_pohon_dana.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DatabaseHelper(), fenix: true);
    Get.lazyPut(() => IApi(), fenix: true);
    Get.lazyPut(() => RIAuth(), fenix: true);
    Get.lazyPut(() => RIProduct(), fenix: true);
    Get.lazyPut(() => RIPohonDana(), fenix: true);
    Get.lazyPut(() => RIEdukasi(), fenix: true);

    Get.put(CMain(), permanent: true);
    // Get.put(CMainConsultant(), permanent: true);
    // Get.put(CDashboard(), permanent: true);
    // Get.put(CPosCashier(), permanent: true);
  }
}