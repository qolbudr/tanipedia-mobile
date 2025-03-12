import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_article_detail/v_edukasi_article_detail.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_article_main/v_edukasi_article_main.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_video_detail/v_edukasi_video_detail.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_video_main/v_edukasi_video_main.dart';

class EdukasiRoute {
  static const prefix = '/edukasi';
  static const video = '$prefix/video';
  static const detail = '$video/detail';
  static const article = '$prefix/article';
  static const articleDetail = '$article/detail';

  static List<GetPage> routes = [
    GetPage(name: video, page: () => VEdukasiVideoMain()),
    GetPage(name: detail, page: () => VEdukasiVideoDetail()),
    GetPage(name: article, page: () => VEdukasiArticleMain()),
    GetPage(name: articleDetail, page: () => VEdukasiArticleDetail()),
  ];

  static Future? toVideo() => Get.toNamed(video);
  static Future? toArticle() => Get.toNamed(article);
  static Future? toVideoDetail({required num? categoryId}) => Get.toNamed(detail, arguments: categoryId);
  static Future? toArticleDetail({required num? id}) => Get.toNamed(articleDetail, arguments: id);
}