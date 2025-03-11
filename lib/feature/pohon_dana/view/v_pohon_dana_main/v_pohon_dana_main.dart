import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/pohon_dana/view/v_pohon_dana_main/v_pohon_dana_main_mobile.dart';

class VPohonDanaMain extends GetResponsiveView {
  VPohonDanaMain({super.key});

  @override
  Widget? phone() => const VPohonDanaMainMobile();
}