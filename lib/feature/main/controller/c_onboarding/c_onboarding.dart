import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/main/controller/c_onboarding/c_onboarding_state.dart';
// import 'package:jobdis/feature/auth/auth_route.dart';
// import 'package:jobdis/feature/main/controller/c_onboarding/c_onboarding_state.dart';

class OnboardItem {
  final String description;
  final String image;

  OnboardItem({required this.description, required this.image});
}

class COnBoarding extends GetxController with GetSingleTickerProviderStateMixin {
  static COnBoarding instance = Get.find();
  late TabController tabController;
  final Rx<COnBoardingState> _state = Rx<COnBoardingState>(const COnBoardingState());
  COnBoardingState get state => _state.value;

  final List<OnboardItem> items = [
    OnboardItem(
      description: "Revolusioner mendukung petani modern dalam mengoptimalkan produktivitas",
      image: "assets/images/onboard_1.png",
    ),
    OnboardItem(
      description: "Memberikan fasilitas kepada masyarakat untuk mendapatkan bibit tanamannya yang berkualitas tinggi",
      image: "assets/images/onboard_2.png",
    ),
    OnboardItem(
      description: "Menyediakan pengetahuan dan pelatihan  pertanian kepada masyarakat luas",
      image: "assets/images/onboard_3.png",
    ),
    OnboardItem(
      description: "Sebagai pusat penjualan produk pertanian yang berkualitas tingkat Indonesia",
      image: "assets/images/onboard_4.png",
    ),
    OnboardItem(
      description: "Memberikan informasi pendanaan untuk mendukung kegiatan pertanian.",
      image: "assets/images/onboard_5.png",
    ),
  ];

  @override
  void onInit() {
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(handleTabChange);
    super.onInit();
  }

  // listener for step indicator
  void handleTabChange() {
    _state.value = _state.value.copyWith(tabIndex: tabController.index);
  }

  // change onboarding slide when button pressed
  void changePage() {
    if(state.tabIndex < 2) return tabController.animateTo(state.tabIndex + 1);
    // AuthRoute.toLogin();
  }

  @override
  void onClose() {
    tabController.removeListener(handleTabChange);
    tabController.dispose();
    super.onClose();
  }
}
