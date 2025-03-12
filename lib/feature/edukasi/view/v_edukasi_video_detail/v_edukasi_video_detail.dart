import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_video_detail/v_edukasi_video_detail_mobile.dart';

class VEdukasiVideoDetail extends GetResponsiveView {
  VEdukasiVideoDetail({super.key});

  @override
  Widget? phone() => const VEdukasiVideoDetailMobile();
}