import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/edukasi/view/v_edukasi_main/v_edukasi_main_mobile.dart';

class VEdukasiMain extends GetResponsiveView {
  VEdukasiMain({super.key});

  @override
  Widget? phone() => const VEdukasiMainMobile();
}