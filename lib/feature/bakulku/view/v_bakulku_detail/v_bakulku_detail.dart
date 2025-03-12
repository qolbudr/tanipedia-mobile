import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/bakulku/view/v_bakulku_detail/v_bakulku_detail_mobile.dart';

class VBakulkuDetail extends GetResponsiveView {
  VBakulkuDetail({super.key});

  @override
  Widget? phone() => const VBakulkuDetailMobile();
}