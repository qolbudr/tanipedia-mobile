import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/main/view/v_main/v_main_mobile.dart';

class VMain extends GetResponsiveView {
  VMain({super.key});

  @override
  Widget? phone() => const VMainMobile();
}