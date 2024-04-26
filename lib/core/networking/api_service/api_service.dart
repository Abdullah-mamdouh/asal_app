import 'package:asal_app/core/networking/api_service/api_constants.dart';
import 'package:asal_app/features/home/data/models/home_model.dart';
import 'package:asal_app/features/products/data/models/product_request_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/auth/data/models/login_model.dart';
import '../../../features/auth/data/models/user_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiUsersConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiUsersConstants.loginEndPoint)
  Future<UserModel> login(@Body() LoginModel loginModel);

  @POST(ApiUsersConstants.homeEndPoint)
  Future<HomeModel> getAllData(@Body() String authkey, String userid);

  @POST(ApiUsersConstants.productsEndPoint)
  Future<ProductModel> getProducts(@Body() ProductRequestModel productRequest);

}
