import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tanipedia_mobile/core/errors/error_handler.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/core/widget/w_snackbar.dart';
import 'package:tanipedia_mobile/feature/edukasi/controller/c_edukasi_article_detail/c_edukasi_article_detail_state.dart';
import 'package:tanipedia_mobile/repositories/r_edukasi/r_edukasi.dart';

class CEdukasiArticleDetail extends GetxController {
  static CEdukasiArticleDetail instance = Get.find();
  final Rx<CEdukasiArticleDetailState> _state = Rx<CEdukasiArticleDetailState>(const CEdukasiArticleDetailState());
  CEdukasiArticleDetailState get state => _state.value;

  final RefreshController refreshController = RefreshController(initialRefresh: true);
  final rEdukasi = Get.find<RIEdukasi>();
  final id = Get.arguments;

  void onGetData() async {
    try {
      _state.value = state.copyWith(status: const Status.loading());
      final response = await rEdukasi.getArticle(id: id);
      _state.value = state.copyWith(data: response.data, status: const Status.success());
      refreshController.refreshCompleted();
    } catch (e) {
      refreshController.refreshFailed();
      _state.value = state.copyWith(status: const Status.error());
      WSnackBar.showSnackBar(message: ErrorHandler.handleError(e), type: WSnackBarType.danger);
    }
  }
}
