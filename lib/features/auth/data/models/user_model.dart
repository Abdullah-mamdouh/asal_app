import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  bool? status;
  String? msg;
  UserModel? data;

  UserModel({this.status, this.msg, this.data});

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

}

@JsonSerializable()
class UserDataModel {
  String? id;
  String? email;
  String? active;
  String? name;
  String? notifications;
  String? profilePhoto;
  String? authKey;
  String? favoriteId;

  UserDataModel(
      {this.id,
        this.email,
        this.active,
        this.name,
        this.notifications,
        this.profilePhoto,
        this.authKey,
        this.favoriteId});

  factory UserDataModel.fromJson(Map<String, dynamic> json) => _$UserDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataModelToJson(this);
}