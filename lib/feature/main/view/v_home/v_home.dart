import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/main/view/v_home/v_home_mobile.dart';

class VHome extends GetResponsiveView {
  VHome({super.key});

  @override
  Widget? phone() => const VHomeMobile();
}