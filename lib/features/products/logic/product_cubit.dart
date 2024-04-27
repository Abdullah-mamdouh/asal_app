import 'package:asal_app/features/products/data/models/product_request_model.dart';
import 'package:asal_app/features/products/data/repo/product_repo.dart';
import 'package:asal_app/features/products/logic/product_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/product_model.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductRepo productRepo;
  ProductCubit({required this.productRepo})
      : super(const ProductState.initial());

  static ProductCubit get(context) => BlocProvider.of<ProductCubit>(context);

 static List<ProductModel> products = [];
  void emitGetProductsStates() async {
    ProductRequestModel productRequest = ProductRequestModel(
      user_id: '1',
      auth_key: 'xx508xx63817x7525x74g004x30706542858349x5x78f5xx34xnh3251',
    );
    emit(const ProductState.loading());
    final response =
        await productRepo.getProducts(productRequest);
    response.when(success: (data) {
      products = data.products!;
      debugPrint(products.toString()+"wwwwwwwwwwwwwww");
      emit(ProductState.success(data));
    }, failure: (error) {
      emit(ProductState.error(error: error.errorModel.message ?? ''));
    });
  }
}
