import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_video_detail/v_edukasi_video_detail.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_video_main/v_edukasi_video_main.dart';

class EdukasiRoute {
  static const prefix = '/edukasi';
  static const video = '$prefix/video';
  static const detail = '$video/detail';

  static List<GetPage> routes = [
    GetPage(name: video, page: () => VEdukasiVideoMain()),
    GetPage(name: detail, page: () => VEdukasiVideoDetail()),
  ];

  static Future? toVideo() => Get.toNamed(video);
  static Future? toDetail({required num? categoryId}) => Get.toNamed(detail, arguments: categoryId);
}