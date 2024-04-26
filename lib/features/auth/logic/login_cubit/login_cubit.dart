import 'dart:convert';

import 'package:asal_app/features/auth/data/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/networking/internet_checker.dart';
import '../../data/repo/auth_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;
  InternetCheckerImpl internetChecker;
  final SharedPreferences sharedPreferences;
  LoginCubit({required this.authRepo, required this.sharedPreferences, required this.internetChecker}) : super(const LoginState.initial());

  static LoginCubit get(context) => BlocProvider.of<LoginCubit>(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  Future<void> saveUserLoginCredentials(LoginModel loginCredentials) async {
    await sharedPreferences.setString(
        'LoginCredentials', jsonEncode(loginCredentials.toJson()));
  }

  Future<void> fetchUserLoginCredentials() async {
    if (sharedPreferences.getString('LoginCredentials') != null) {
      final fetchedLoginCredentials = LoginModel.fromJson(
        jsonDecode(sharedPreferences.getString('LoginCredentials')!),
      );
      emailController.text = fetchedLoginCredentials.email!;
      passwordController.text = fetchedLoginCredentials.password!;
    }
  }

  Future<void> clearUserLoginCredentials() async {
    if (sharedPreferences.containsKey('LoginCredentials')) {
      sharedPreferences.remove('LoginCredentials');
    }
  }

  void emitLoginStates() async {
    emit(const LoginState.loading());

    if (await internetChecker.isConnected) {
      final loginModel = LoginModel(email: emailController.text,password: passwordController.text);
      final response = await authRepo.login(loginModel);
      response.when(success: (userModel) {
        emit(LoginState.success(userModel));
        debugPrint(userModel.toString());
        saveUserLoginCredentials(loginModel);
      }, failure: (error) {
        emit(LoginState.error(error: error.errorModel.message ?? ''));
      });
    }

    else {
      emit(LoginState.error(error: 'No Internet Connection' ?? ''));
    }
  }
}
