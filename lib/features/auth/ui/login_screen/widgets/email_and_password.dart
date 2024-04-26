import 'package:flutter/material.dart';
import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  // bool hasLowercase = false;
  // bool hasUppercase = false;
  // bool hasSpecialCharacters = false;
  // bool hasNumber = false;
  // bool hasMinLength = false;

  late TextEditingController passwordController;
  late TextEditingController emailController;
  @override
  void initState() {
    super.initState();
    emailController  = TextEditingController();
    passwordController = TextEditingController();
    //setupPasswordControllerListener();
  }
/*
  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    return Form(
      //key: context.read<SignInCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
              hintText: 'البريد الالكتروني',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: passwordController,
            hintText: 'كلمة المرور',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
