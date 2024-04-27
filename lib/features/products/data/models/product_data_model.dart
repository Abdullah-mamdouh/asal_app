import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../products/data/models/product_model.dart';
part 'product_data_model.g.dart';

@JsonSerializable()
class ProductDataModel {
  bool? status;
  String? msg;
  @JsonKey(name: 'data')
 List< ProductModel>? products;

  ProductDataModel({this.status, this.msg, this.products});

  factory ProductDataModel.fromJson(Map<String, dynamic> json) => _$ProductDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDataModelToJson(this);
}
