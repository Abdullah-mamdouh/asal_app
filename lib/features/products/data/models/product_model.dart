import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String? id;
  String? name;
  String? shortDesc;
  String? mainImage;
  String? listPrice;
  String? salePrice;
  String? discount;
  String? rating;

  ProductModel({this.id,
    this.name,
    this.shortDesc,
    this.mainImage,
    this.listPrice,
    this.salePrice,
    this.discount,
    this.rating});

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}