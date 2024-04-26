// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      email: json['email'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String? ?? ApiUsersConstants.token,
      platform: json['platform'] as String? ?? ApiUsersConstants.platform,
      device_id: json['device_id'] as String? ?? ApiUsersConstants.device_id,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'token': instance.token,
      'platform': instance.platform,
      'device_id': instance.device_id,
    };
