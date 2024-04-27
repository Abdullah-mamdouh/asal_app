import 'package:asal_app/features/home/logic/home_cubit.dart';
import 'package:asal_app/features/products/logic/product_cubit.dart';
import 'package:asal_app/features/products/logic/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'features/auth/logic/login_cubit/login_cubit.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider<LoginCubit>(create: (context) => getIt<LoginCubit>()),
          BlocProvider<HomeCubit>(create: (context) => getIt<HomeCubit>()),
          BlocProvider<ProductCubit>(create: (context) => getIt<ProductCubit>()),
    ],
    child:ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'My App',
          theme: ThemeData(
            //primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.loginScreen,
          onGenerateRoute: appRouter.generateRoute,
        )),
    );
  }
}
