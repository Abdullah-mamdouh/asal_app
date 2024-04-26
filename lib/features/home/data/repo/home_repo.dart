import 'package:asal_app/core/networking/error_handler_base.dart';
import 'package:asal_app/core/networking/result_handler.dart';
import 'package:asal_app/features/auth/data/models/login_model.dart';
import 'package:asal_app/features/auth/data/models/user_model.dart';
import 'package:asal_app/features/home/data/models/home_model.dart';
import '../../../../core/networking/api_service/api_service.dart';

class HomeRepo {
  final ApiService apiService;

  HomeRepo(this.apiService);

  Future<ResultHandler<HomeModel>> getAllData({required String auth_key, required String user_id}) async {
    try {
      final response = await apiService.getAllData(auth_key,user_id);
      return ResultHandler.success(response);
    } catch (errro) {
      return ResultHandler.failure(Handler.handle(ErrorHandlerAuth(errro)));
    }
  }
}