// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edukasi_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EdukasiVideoImpl _$$EdukasiVideoImplFromJson(Map<String, dynamic> json) =>
    _$EdukasiVideoImpl(
      id: json['id'] as num?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      link: json['link'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$EdukasiVideoImplToJson(_$EdukasiVideoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'link': instance.link,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
