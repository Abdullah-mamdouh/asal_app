import 'package:asal_app/core/networking/error_handler_base.dart';
import 'package:asal_app/core/networking/result_handler.dart';
import 'package:asal_app/features/home/data/models/home_model.dart';
import '../../../../core/networking/api_service/api_service.dart';

class HomeRepo {
  final ApiService apiService;

  HomeRepo(this.apiService);

  Future<ResultHandler<HomeModel>> getAllData({required String auth_key, required String user_id}) async {
    try {
      final response = await apiService.getAllData(
       'xx508xx63817x7525x74g004x30706542858349x5x78f5xx34xnh468',
        '11'
      );
      return ResultHandler.success(response);
    } catch (errro) {
      return ResultHandler.failure(Handler.handle(ApiErrorHandler(errro)));
    }
  }
}