import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/main/view/v_splash_screen/v_splash_screen_mobile.dart';

class VSplashScreen extends GetResponsiveView {
  VSplashScreen({super.key});

  @override
  Widget? phone() => const VSplashScreenMobile();
}