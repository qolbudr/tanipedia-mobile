// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edukasi_video_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EdukasiVideoCategoryImpl _$$EdukasiVideoCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$EdukasiVideoCategoryImpl(
      id: json['id'] as num?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$EdukasiVideoCategoryImplToJson(
        _$EdukasiVideoCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
