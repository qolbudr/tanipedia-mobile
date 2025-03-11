import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/auth/view/v_login/v_login_mobile.dart';

class VLogin extends GetResponsiveView {
  VLogin({super.key});

  @override
  Widget? phone() => const VLoginMobile();
}