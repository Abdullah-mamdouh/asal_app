// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      slider: (json['slider'] as List<dynamic>?)
          ?.map((e) => SliderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedProducts: (json['selectedProducts'] as List<dynamic>?)
          ?.map((e) => SelectedProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      newProducts: (json['newProducts'] as List<dynamic>?)
          ?.map((e) => NewProductMdel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'slider': instance.slider,
      'categories': instance.categories,
      'products': instance.products,
      'selectedProducts': instance.selectedProducts,
      'newProducts': instance.newProducts,
    };

SliderModel _$SliderModelFromJson(Map<String, dynamic> json) => SliderModel(
      id: json['id'] as String?,
      productId: json['productId'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$SliderModelToJson(SliderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'image': instance.image,
    };

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['id'] as String?,
      catName: json['catName'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'catName': instance.catName,
      'icon': instance.icon,
    };

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

SelectedProductModel _$SelectedProductModelFromJson(
        Map<String, dynamic> json) =>
    SelectedProductModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      shortDesc: json['shortDesc'] as String?,
      mainImage: json['mainImage'] as String?,
      listPrice: json['listPrice'] as String?,
      salePrice: json['salePrice'] as String?,
      discount: json['discount'] as String?,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$SelectedProductModelToJson(
        SelectedProductModel instance) =>
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

NewProductMdel _$NewProductMdelFromJson(Map<String, dynamic> json) =>
    NewProductMdel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      shortDesc: json['shortDesc'] as String?,
      mainImage: json['mainImage'] as String?,
      listPrice: json['listPrice'] as String?,
      salePrice: json['salePrice'] as String?,
      discount: json['discount'] as String?,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$NewProductMdelToJson(NewProductMdel instance) =>
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
