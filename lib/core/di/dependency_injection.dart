import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:asal_app/core/internet_checker/logic/internet_checker_cubit.dart';
import 'package:asal_app/core/networking/internet_checker.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/data/repo/auth_repo.dart';
import '../../features/auth/logic/login_cubit/login_cubit.dart';
import '../networking/api_service/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async{
  // firebaseAuth
  // final firebaseauth = FirebaseAuth.instance;
  // getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(firebaseauth));
  // // Internet Connection Checker
  // getIt.registerLazySingleton(() => InternetCheckerImpl(getIt()));
  // getIt.registerLazySingleton(() => InternetConnectionChecker());
  // // internet connection cubit
  // getIt.registerFactory(() => InternetCheckerCubit(getIt()));
  //
  // // /// Register cubit
  // // getIt.registerFactory(() => SignupCubit(getIt(),getIt()));
  //
  // /// create instance from SharedPreferences
  // final sharedPreferences = await SharedPreferences.getInstance();
  // /// login cubit
  // getIt.registerFactory(() => SignInCubit(internetChecker: getIt(), authRepo: getIt(), sharedPreferences: sharedPreferences));
  //
  // /// Dio & NotificationAPI
  // Dio dio = DioFactory.getDio();

  // /// FirebaseMessaging.instance
  // final messaging = FirebaseMessaging.instance;

  /// LocalNotification
  // final localNotification = FlutterLocalNotificationsPlugin();


}
