import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_request_model.g.dart';

@JsonSerializable()
class ProductRequestModel {
  String? auth_key;
  String? user_id;
  String? search_with;
  String? home_types;
  int? item_count;
  int? limit;

  ProductRequestModel(
      {this.auth_key,
      this.user_id,
      this.search_with = 'home_types',
      this.home_types = 'new',
      this.item_count = 0,
      this.limit = 30});

  factory ProductRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ProductRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductRequestModelToJson(this);
}
