import 'package:freezed_annotation/freezed_annotation.dart';

part 'pohon_dana_model.freezed.dart';
part 'pohon_dana_model.g.dart';  

@freezed
class PohonDanaModel with _$PohonDanaModel {
  const factory PohonDanaModel({
    num? id,
    String? title,
    String? description,
    String? image,
    String? link,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PohonDanaModel;

  factory PohonDanaModel.fromJson(Map<String, dynamic> json) => _$PohonDanaModelFromJson(json);
}