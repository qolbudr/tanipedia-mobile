import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_main/c_main_state.dart';

class CMain extends GetxController with GetSingleTickerProviderStateMixin {
  static CMain instance = Get.find();
  late TabController tabController;
  final Rx<CMainState> _state = Rx<CMainState>(const CMainState());
  CMainState get state => _state.value;

  @override
  void onInit() {
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(handleTabChange);
    super.onInit();
  }

  void handleTabChange() {
    _state.value = _state.value.copyWith(tabIndex: tabController.index);
  }
}