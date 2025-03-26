// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as num?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      price: json['price'] as num?,
      unit: json['unit'] as String?,
      category: $enumDecodeNullable(_$ProductCategoryEnumMap, json['category']),
      seller: json['seller'] == null
          ? null
          : UserModel.fromJson(json['seller'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'unit': instance.unit,
      'category': _$ProductCategoryEnumMap[instance.category],
      'seller': instance.seller?.toJson(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$ProductCategoryEnumMap = {
  ProductCategory.buah: 'buah',
  ProductCategory.sayur: 'sayur',
  ProductCategory.bibit: 'bibit',
  ProductCategory.pupuk: 'pupuk',
  ProductCategory.biji: 'biji',
};
