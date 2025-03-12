import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/pohon_dana/view/v_pohon_dana_detail/v_pohon_dana_detail.dart';

class PohonDanaRoute {
  static const prefix = '/pohon-dana';
  static const detail = '$prefix/detail';

  static List<GetPage> routes = [
    GetPage(name: detail, page: () => VPohonDanaDetail()),
  ];

  static Future? toDetail({required num id}) => Get.toNamed(detail, arguments: id);
}