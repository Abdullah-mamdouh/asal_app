import 'package:asal_app/features/home/data/models/home_model.dart';
import 'package:asal_app/features/products/data/models/product_request_model.dart';
import 'package:asal_app/features/products/data/repo/product_repo.dart';
import 'package:asal_app/features/products/logic/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductRepo homeRepo;
  ProductCubit({required this.homeRepo}) : super(const ProductState.initial());

  static ProductCubit get(context) => BlocProvider.of<ProductCubit>(context);

  ProductModel? homeData ;
  void emitGetProductStates(ProductRequestModel productRequest) async {
    emit(const ProductState.loading());
    final response = await homeRepo.getProducts(productRequest: productRequest);
    response.when(success: (data) {
      homeData = data;
      emit(ProductState.success(data));
    }, failure: (error) {
      emit(ProductState.error(error: error.errorModel.message ?? ''));
    });
  }
}