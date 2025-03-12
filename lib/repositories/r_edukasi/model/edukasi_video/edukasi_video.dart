import 'package:freezed_annotation/freezed_annotation.dart';

part 'edukasi_video.freezed.dart';
part 'edukasi_video.g.dart';

@freezed
class EdukasiVideo with _$EdukasiVideo {
  const factory EdukasiVideo({
    num? id,
    String? title,
    String? description,
    String? link,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _EdukasiVideo;

  factory EdukasiVideo.fromJson(Map<String, dynamic> json) => _$EdukasiVideoFromJson(json);
}