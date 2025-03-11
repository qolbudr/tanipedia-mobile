import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/auth/view/v_register/v_register_mobile.dart';

class VRegister extends GetResponsiveView {
  VRegister({super.key});

  @override
  Widget? phone() => const VRegisterMobile();
}