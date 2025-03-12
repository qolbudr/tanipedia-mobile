import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_video_main/v_edukasi_video_main_mobile.dart';

class VEdukasiVideoMain extends GetResponsiveView {
  VEdukasiVideoMain({super.key});

  @override
  Widget? phone() => const VEdukasiVideoMainMobile();
}