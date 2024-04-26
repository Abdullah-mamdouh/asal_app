
import 'package:asal_app/features/home/data/models/home_model.dart';
import 'package:asal_app/features/home/data/repo/home_repo.dart';
import 'package:asal_app/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeRepo homeRepo;
  HomeCubit({required this.homeRepo}) : super(const HomeState.initial());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  HomeModel? homeData ;
  void emitGetProductStates(String auth_key, String user_id) async {
    emit(const HomeState.loading());
    final response = await homeRepo.getAllData(auth_key: auth_key, user_id: user_id);
    response.when(success: (data) {
      homeData = data;
      emit(HomeState.success(data));
    }, failure: (error) {
      emit(HomeState.error(error: error.errorModel.message ?? ''));
    });
  }
}