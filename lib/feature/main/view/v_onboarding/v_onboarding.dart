import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/main/view/v_onboarding/v_onboarding_mobile.dart';

class VOnboarding extends GetResponsiveView {
  VOnboarding({super.key});

  @override
  Widget? phone() => const VOnboardingMobile();
}