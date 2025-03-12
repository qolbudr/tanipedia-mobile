// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edukasi_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EdukasiArticleImpl _$$EdukasiArticleImplFromJson(Map<String, dynamic> json) =>
    _$EdukasiArticleImpl(
      id: json['id'] as num?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$EdukasiArticleImplToJson(
        _$EdukasiArticleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'content': instance.content,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
