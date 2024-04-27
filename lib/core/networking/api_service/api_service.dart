import 'package:asal_app/core/networking/api_service/api_constants.dart';
import 'package:asal_app/features/home/data/models/home_model.dart';
import 'package:asal_app/features/products/data/models/product_data_model.dart';
import 'package:asal_app/features/products/data/models/product_request_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/auth/data/models/login_model.dart';
import '../../../features/auth/data/models/user_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiUsersConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiUsersConstants.loginEndPoint)
  @Headers(ApiUsersConstants.headers)
  @FormUrlEncoded()
  Future<UserModel> login(@Body() LoginModel loginModel);

  @POST(ApiUsersConstants.homeEndPoint)
  @Headers(ApiUsersConstants.headers)
  @FormUrlEncoded()
  Future<HomeModel> getAllData(@Field() String auth_key, @Field() String user_id);

  @POST(ApiUsersConstants.productsEndPoint)
  @Headers(ApiUsersConstants.headers)
  @FormUrlEncoded()
  Future<ProductDataModel> getProducts(@Body() ProductRequestModel productRequest);

}
