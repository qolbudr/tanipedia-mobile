import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_article_main/v_edukasi_article_main_mobile.dart';

class VEdukasiArticleMain extends GetResponsiveView {
  VEdukasiArticleMain({super.key});

  @override
  Widget? phone() => const VEdukasiArticleMainMobile();
}