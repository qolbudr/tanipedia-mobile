import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/bakulku/view/v_bakulku_detail/v_bakulku_detail.dart';

class BakulkuRoute {
  static const prefix = '/bakulku';
  static const detail = '$prefix/detail';
  static const register = '$prefix/register';

  static List<GetPage> routes = [
    GetPage(name: detail, page: () => VBakulkuDetail()),
  ];

  static Future? toDetail({required num id}) => Get.toNamed(detail, arguments: id);
}