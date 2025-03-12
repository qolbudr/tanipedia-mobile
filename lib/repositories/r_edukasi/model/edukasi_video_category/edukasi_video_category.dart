import 'package:freezed_annotation/freezed_annotation.dart';

part 'edukasi_video_category.freezed.dart';
part 'edukasi_video_category.g.dart';

@freezed
class EdukasiVideoCategory with _$EdukasiVideoCategory {
  const factory EdukasiVideoCategory({
    num? id,
    String? title,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _EdukasiVideoCategory;

  factory EdukasiVideoCategory.fromJson(Map<String, dynamic> json) => _$EdukasiVideoCategoryFromJson(json);
}