import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanipedia_mobile/core/models/status.dart';
import 'package:tanipedia_mobile/repositories/r_edukasi/model/edukasi_article/edukasi_article.dart';

part 'c_edukasi_article_detail_state.freezed.dart';

@freezed
class CEdukasiArticleDetailState with _$CEdukasiArticleDetailState {
  const factory CEdukasiArticleDetailState({
    @Default(Status.initial()) Status status,
    EdukasiArticle? data,
  }) = _CEdukasiArticleDetailState;
}