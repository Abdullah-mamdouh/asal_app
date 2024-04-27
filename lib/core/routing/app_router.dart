import 'package:asal_app/features/home/logic/home_cubit.dart';
import 'package:asal_app/features/home/ui/home_screen.dart';
import 'package:asal_app/features/products/logic/product_cubit.dart';
import 'package:asal_app/features/products/ui/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import '../../features/auth/logic/login_cubit/login_cubit.dart';
import '../../features/auth/ui/login_screen/login_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings)  {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
            child:  LoginScreen(),),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<HomeCubit>(),
              child:  HomeScreen(),),);
      case Routes.productsScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<ProductCubit>(),
              child:  ProductScreen(),),);

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
