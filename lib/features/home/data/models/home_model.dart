import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  bool? status;
  String? msg;
  DataModel? data;

  HomeModel({this.status, this.msg, this.data});

  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

@JsonSerializable()
class DataModel {
  List<SliderModel>? slider;
  List<CategoryModel>? categories;
  List<ProductModel>? products;
  List<SelectedProductModel>? selectedProducts;
  List<NewProductMdel>? newProducts;

  DataModel(
      {this.slider,
        this.categories,
        this.products,
        this.selectedProducts,
        this.newProducts});

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);

}

@JsonSerializable()
class SliderModel {
  String? id;
  String? productId;
  String? image;

  SliderModel({this.id, this.productId, this.image});

  factory SliderModel.fromJson(Map<String, dynamic> json) => _$SliderModelFromJson(json);

  Map<String, dynamic> toJson() => _$SliderModelToJson(this);
}

@JsonSerializable()
class CategoryModel {
  String? id;
  String? catName;
  String? icon;

  CategoryModel({this.id, this.catName, this.icon});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

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

  ProductModel(
      {this.id,
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

@JsonSerializable()
class SelectedProductModel {
  String? id;
  String? name;
  String? shortDesc;
  String? mainImage;
  String? listPrice;
  String? salePrice;
  String? discount;
  String? rating;

  SelectedProductModel(
      {this.id,
        this.name,
        this.shortDesc,
        this.mainImage,
        this.listPrice,
        this.salePrice,
        this.discount,
        this.rating});

  factory SelectedProductModel.fromJson(Map<String, dynamic> json) => _$SelectedProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$SelectedProductModelToJson(this);
}

@JsonSerializable()
class NewProductMdel {
  String? id;
  String? name;
  String? shortDesc;
  String? mainImage;
  String? listPrice;
  String? salePrice;
  String? discount;
  String? rating;

  NewProductMdel({this.id,
    this.name,
    this.shortDesc,
    this.mainImage,
    this.listPrice,
    this.salePrice,
    this.discount,
    this.rating});

  factory NewProductMdel.fromJson(Map<String, dynamic> json) => _$NewProductMdelFromJson(json);

  Map<String, dynamic> toJson() => _$NewProductMdelToJson(this);
}