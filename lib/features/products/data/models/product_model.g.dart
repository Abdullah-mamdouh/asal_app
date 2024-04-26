// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      shortDesc: json['shortDesc'] as String?,
      mainImage: json['mainImage'] as String?,
      listPrice: json['listPrice'] as String?,
      salePrice: json['salePrice'] as String?,
      discount: json['discount'] as String?,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortDesc': instance.shortDesc,
      'mainImage': instance.mainImage,
      'listPrice': instance.listPrice,
      'salePrice': instance.salePrice,
      'discount': instance.discount,
      'rating': instance.rating,
    };
