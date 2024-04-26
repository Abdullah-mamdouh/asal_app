import 'package:asal_app/core/di/dependency_injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/networking/firebase_service/firebase_constant.dart';
import 'core/routing/app_router.dart';
import 'my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await Firebase.initializeApp(
      options:  firebaseOptions);
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

