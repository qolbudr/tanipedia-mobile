import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_article_detail/v_edukasi_article_detail_mobile.dart';

class VEdukasiArticleDetail extends GetResponsiveView {
  VEdukasiArticleDetail({super.key});

  @override
  Widget? phone() => const VEdukasiArticleDetailMobile();
}