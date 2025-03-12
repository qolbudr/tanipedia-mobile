import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tanipedia_mobile/core/enums/product_category.dart';
import 'package:tanipedia_mobile/core/errors/error_handler.dart';
import 'package:tanipedia_mobile/core/widget/w_snackbar.dart';
import 'package:tanipedia_mobile/feature/bakulku/controller/c_bakulku_main/c_bakulku_main_state.dart';
import 'package:tanipedia_mobile/repositories/r_bakulku/r_bakulku.dart';

class CBakulkuMain extends GetxController {
  static CBakulkuMain instance = Get.find();
  late TabController tabController;
  final Rx<CBakulkuMainState> _state = Rx<CBakulkuMainState>(const CBakulkuMainState());
  CBakulkuMainState get state => _state.value;

  final RefreshController refreshController = RefreshController(initialRefresh: true);
  final rProduct = Get.find<RIProduct>();

  final searchText = TextEditingController();

  void onGetData() async {
    try {
      if(refreshController.isRefresh) _state.value = state.copyWith(offset: 0);
      final response = await rProduct.getProducts(limit: state.limit, offset: state.offset, search: searchText.text, category: state.category);
      if(refreshController.isLoading) _state.value = state.copyWith(data: [...state.data, ...(response.data ?? [])], offset: state.offset + (response.data?.length ?? 0));
      if(refreshController.isRefresh) _state.value = state.copyWith(data: response.data ?? [], offset: response.data?.length ?? 0);
      if(refreshController.isLoading && response.data?.isEmpty == true) return refreshController.loadNoData();
      if(refreshController.isLoading) return refreshController.loadComplete();
      if(refreshController.isRefresh) return refreshController.refreshCompleted();
    } catch (e) {
      WSnackBar.showSnackBar(message: ErrorHandler.handleError(e), type: WSnackBarType.danger);
    }
  }

  void onChangeCategory(ProductCategory category) {
    _state.value = state.copyWith(category: category);
    refreshController.requestRefresh();
  }
}