import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/pohon_dana/view/v_pohon_dana_detail/v_pohon_dana_detail_mobile.dart';

class VPohonDanaDetail extends GetResponsiveView {
  VPohonDanaDetail({super.key});

  @override
  Widget? phone() => const VPohonDanaDetailMobile();
}