import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tanipedia_mobile/core/errors/error_handler.dart';
import 'package:tanipedia_mobile/core/widget/w_snackbar.dart';
import 'package:tanipedia_mobile/feature/edukasi/controller/c_edukasi_article_main/c_edukasi_article_main_state.dart';
import 'package:tanipedia_mobile/repositories/r_edukasi/r_edukasi.dart';

class CEdukasiArticleMain extends GetxController {
  static CEdukasiArticleMain instance = Get.find();
  late TabController tabController;
  final Rx<CEdukasiArticleMainState> _state = Rx<CEdukasiArticleMainState>(const CEdukasiArticleMainState());
  CEdukasiArticleMainState get state => _state.value;

  final RefreshController refreshController = RefreshController(initialRefresh: true);
  final rEdukasi = Get.find<RIEdukasi>();

  final searchText = TextEditingController();

  void onGetData() async {
    try {
      if(refreshController.isRefresh) _state.value = state.copyWith(offset: 0);
      final response = await rEdukasi.getArticles(limit: state.limit, offset: state.offset, search: searchText.text);
      if(refreshController.isLoading) _state.value = state.copyWith(data: [...state.data, ...(response.data ?? [])], offset: state.offset + (response.data?.length ?? 0));
      if(refreshController.isRefresh) _state.value = state.copyWith(data: response.data ?? [], offset: response.data?.length ?? 0);
      if(refreshController.isLoading && response.data?.isEmpty == true) return refreshController.loadNoData();
      if(refreshController.isLoading) return refreshController.loadComplete();
      if(refreshController.isRefresh) return refreshController.refreshCompleted();
    } catch (e) {
      WSnackBar.showSnackBar(message: ErrorHandler.handleError(e), type: WSnackBarType.danger);
    }
  }
}