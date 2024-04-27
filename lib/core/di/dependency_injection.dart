import 'package:asal_app/core/networking/api_service/api_service.dart';
import 'package:asal_app/features/home/data/repo/home_repo.dart';
import 'package:asal_app/features/home/logic/home_cubit.dart';
import 'package:asal_app/features/products/data/repo/product_repo.dart';
import 'package:asal_app/features/products/logic/product_cubit.dart';
import 'package:dio/dio.dart';
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
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Internet Connection Checker
  getIt.registerLazySingleton(() => InternetCheckerImpl(getIt()));
  getIt.registerLazySingleton(() => InternetConnectionChecker());
  // internet connection cubit
  getIt.registerFactory(() => InternetCheckerCubit(getIt()));

  //create instance from SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();

  // Auth repo
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt()));
  //login cubit
  getIt.registerFactory(() => LoginCubit(internetChecker: getIt(), authRepo: getIt(), sharedPreferences: sharedPreferences));

  // Home repo
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  //Home cubit
  getIt.registerFactory(() => HomeCubit(homeRepo: getIt()));

  // Product repo
  getIt.registerLazySingleton<ProductRepo>(() => ProductRepo(getIt()));
  //Product cubit
  getIt.registerFactory(() => ProductCubit(productRepo: getIt()));



}
