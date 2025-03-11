import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/profile/view/v_profile_main/v_profile_main_mobile.dart';

class VProfileMain extends GetResponsiveView {
  VProfileMain({super.key});

  @override
  Widget? phone() => const VProfileMainMobile();
}