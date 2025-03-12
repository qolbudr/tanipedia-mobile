import 'package:freezed_annotation/freezed_annotation.dart';

part 'edukasi_article.freezed.dart';
part 'edukasi_article.g.dart';

@freezed
class EdukasiArticle with _$EdukasiArticle {
  const factory EdukasiArticle({
    num? id,
    String? title,
    String? description,
    String? content,
    String? image,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _EdukasiArticle;

  factory EdukasiArticle.fromJson(Map<String, dynamic> json) => _$EdukasiArticleFromJson(json);
}