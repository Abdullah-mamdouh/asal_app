import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../products/data/models/product_model.dart';
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
  @JsonKey(name: 'selected_products')
  List<ProductModel>? selectedProducts;
  @JsonKey(name: 'new_products')
  List<ProductModel>? newProducts;

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
