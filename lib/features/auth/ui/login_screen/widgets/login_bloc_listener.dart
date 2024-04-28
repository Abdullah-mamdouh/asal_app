import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asal_app/core/helpers/extensions.dart';
import 'package:asal_app/core/widgets/indicator_widget.dart';
import 'package:asal_app/core/widgets/state_handler_widget.dart';
import 'package:asal_app/features/auth/logic/login_cubit/login_state.dart';

import '../../../../../core/routing/routes.dart';

import '../../../../home/logic/home_cubit.dart';
import '../../../logic/login_cubit/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const IndicatorWidget(),
            );
          },
          success: (loginResponse) async{
            context.pop();
            context.read<HomeCubit>().emitGetProductStates(loginResponse.data.authKey,loginResponse.data.id);
            context.pushNamed(Routes.homeScreen,arguments:LoginCubit.user);


          },
          error: (error) {
            context.pop();
            StateHandler.setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

}
