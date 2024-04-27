// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      data: json['data'] == null
          ? null
          : UserDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'data': instance.data,
    };

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) =>
    UserDataModel(
      id: json['id'] as String?,
      email: json['email'] as String?,
      active: json['active'] as String?,
      name: json['name'] as String?,
      notifications: json['notifications'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      authKey: json['authKey'] as String?,
    );

Map<String, dynamic> _$UserDataModelToJson(UserDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'active': instance.active,
      'name': instance.name,
      'notifications': instance.notifications,
      'profilePhoto': instance.profilePhoto,
      'authKey': instance.authKey,
    };
