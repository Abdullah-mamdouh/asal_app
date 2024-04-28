import 'package:asal_app/core/networking/error_handler_base.dart';
import 'package:asal_app/core/networking/result_handler.dart';
import 'package:asal_app/features/auth/data/models/login_model.dart';
import 'package:asal_app/features/auth/data/models/user_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/networking/api_service/api_service.dart';

class AuthRepo {
  final ApiService apiService;
  AuthRepo(this.apiService);

  Future<ResultHandler<UserModel>> login(
      LoginModel loginModel) async {
    try {
      final response = await apiService.login(loginModel);
      return ResultHandler.success(response);
    } catch (error) {
      return ResultHandler.failure(Handler.handle(ApiErrorHandler(error)));
    }
  }
}
