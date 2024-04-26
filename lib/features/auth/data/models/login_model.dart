import 'package:asal_app/core/networking/api_service/api_constants.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  String? email;
  String? password;
  String? token;
  String? platform;
  String? device_id;

  LoginModel(
      {
        this.email,
        this.password,
        this.token = ApiUsersConstants.token,
        this.platform = ApiUsersConstants.platform,
        this.device_id = ApiUsersConstants.device_id,
});

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
