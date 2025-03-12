import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/repositories/r_edukasi/model/edukasi_article/edukasi_article.dart';

part 'c_edukasi_article_main_state.freezed.dart';

@freezed
class CEdukasiArticleMainState with _$CEdukasiArticleMainState {
  const factory CEdukasiArticleMainState({
    @Default(Status.initial()) Status status,
    @Default(0) num offset,
    @Default(10) num limit,
    @Default([]) List<EdukasiArticle> data,
  }) = _CEdukasiArticleMainState;
}