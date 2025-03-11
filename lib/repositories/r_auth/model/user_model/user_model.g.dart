// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as num?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      photo: json['photo'] as String?,
      role: $enumDecodeNullable(_$ERoleEnumMap, json['role']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'photo': instance.photo,
      'role': _$ERoleEnumMap[instance.role],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$ERoleEnumMap = {
  ERole.admin: 'admin',
  ERole.seller: 'seller',
  ERole.user: 'user',
};
