// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRequestModel _$ProductRequestModelFromJson(Map<String, dynamic> json) =>
    ProductRequestModel(
      auth_key: json['auth_key'] as String?,
      user_id: json['user_id'] as String?,
      search_with: json['search_with'] as String? ?? 'home_types',
      home_types: json['home_types'] as String? ?? 'new',
      item_count: (json['item_count'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? 30,
    );

Map<String, dynamic> _$ProductRequestModelToJson(
        ProductRequestModel instance) =>
    <String, dynamic>{
      'auth_key': instance.auth_key,
      'user_id': instance.user_id,
      'search_with': instance.search_with,
      'home_types': instance.home_types,
      'item_count': instance.item_count,
      'limit': instance.limit,
    };
