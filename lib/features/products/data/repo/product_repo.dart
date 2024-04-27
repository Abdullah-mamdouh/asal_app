import 'package:asal_app/core/networking/error_handler_base.dart';
import 'package:asal_app/core/networking/result_handler.dart';
import 'package:asal_app/features/auth/data/models/login_model.dart';
import 'package:asal_app/features/auth/data/models/user_model.dart';
import 'package:asal_app/features/home/data/models/home_model.dart';
import 'package:asal_app/features/products/data/models/product_data_model.dart';
import 'package:asal_app/features/products/data/models/product_request_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/networking/api_service/api_service.dart';
import '../models/product_model.dart';

class ProductRepo {
  final ApiService apiService;

  ProductRepo(this.apiService);

  Future<ResultHandler<ProductDataModel>> getProducts( ProductRequestModel productRequest) async {
    try {
      final response = await apiService.getProducts(productRequest
      //     {
      //   'auth_key': 'xx508xx63817x7525x74g004x30706542858349x5x78f5xx34xnh3251',
      //   'user_id': '1',
      //   'search_with': 'home_types',
      //   'home_types': 'new',
      //   'item_count': '0',
      //   'limit': '30'
      // }
      );
      return ResultHandler.success(response);
    } catch (errro) {
      return ResultHandler.failure(Handler.handle(ApiErrorHandler(errro)));
    }
  }
}