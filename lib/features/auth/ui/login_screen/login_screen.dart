
import 'package:flutter/material.dart';
import 'widgets/login_body_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    super.initState();
    // SignInCubit.get(context).fetchUserLoginCredentials();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SigninWidget(),
    );
  }
}
