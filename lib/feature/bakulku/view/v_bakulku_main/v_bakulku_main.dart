import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/bakulku/view/v_bakulku_main/v_bakulku_main_mobile.dart';

class VBakulkuMain extends GetResponsiveView {
  VBakulkuMain({super.key});

  @override
  Widget? phone() => const VBakulkuMainMobile();
}