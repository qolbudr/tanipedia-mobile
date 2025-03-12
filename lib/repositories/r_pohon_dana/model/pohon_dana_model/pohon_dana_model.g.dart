// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pohon_dana_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PohonDanaModelImpl _$$PohonDanaModelImplFromJson(Map<String, dynamic> json) =>
    _$PohonDanaModelImpl(
      id: json['id'] as num?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      link: json['link'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PohonDanaModelImplToJson(
        _$PohonDanaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'link': instance.link,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
