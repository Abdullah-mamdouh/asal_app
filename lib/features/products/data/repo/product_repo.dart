import 'package:asal_app/core/networking/error_handler_base.dart';
import 'package:asal_app/core/networking/result_handler.dart';
import 'package:asal_app/features/auth/data/models/login_model.dart';
import 'package:asal_app/features/auth/data/models/user_model.dart';
import 'package:asal_app/features/home/data/models/home_model.dart';
import 'package:asal_app/features/products/data/models/product_request_model.dart';
import '../../../../core/networking/api_service/api_service.dart';

class ProductRepo {
  final ApiService apiService;

  ProductRepo(this.apiService);

  Future<ResultHandler<ProductModel>> getProducts({required ProductRequestModel productRequest}) async {
    try {
      final response = await apiService.getProducts(productRequest);
      return ResultHandler.success(response);
    } catch (errro) {
      return ResultHandler.failure(Handler.handle(ErrorHandlerAuth(errro)));
    }
  }
}