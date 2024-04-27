//
// import 'package:asal_app/core/networking/api_service/api_constants.dart';
// import 'package:asal_app/core/networking/result_handler.dart';
// import 'package:asal_app/features/auth/data/models/login_model.dart';
// import 'package:asal_app/features/auth/data/models/user_model.dart';
// import 'package:dio/dio.dart';
// import 'package:retrofit/retrofit.dart';
//
// part 'auth_service.g.dart';
//
// @RestApi(baseUrl: ApiUsersConstants.baseUrl)
// abstract class AuthService {
//
//   factory AuthService(Dio dio, {String baseUrl}) = _AuthService;
//
//   @POST(ApiUsersConstants.loginEndPoint)
//   Future<UserModel> login(
//       @Body() LoginModel loginModel);
//
// }