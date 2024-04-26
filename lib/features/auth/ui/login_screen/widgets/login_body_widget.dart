
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/bouncing_button.dart';
import 'title_widget.dart';
import 'dont_have_account_text.dart';
import 'email_and_password.dart';
import 'logo_widget.dart';

class SigninWidget extends StatelessWidget {
  const SigninWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height:55 ,),
            verticalSpace(80),
            LogoWidget(),
            verticalSpace(15),
            TitleWidget(title: 'مرحبا بكم',),
            Padding(
              padding: EdgeInsets.symmetric(vertical:20.h, horizontal: 20.0.w),
              child: Column(
                children: [
                  const EmailAndPassword(),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'نسيت كلمة المرور',
                      style: TextStyles.font11GrayRegular,
                    ),
                  ),
                  verticalSpace(40),
                  BouncingButton(child: Text('تسجيل الدخول', style: TextStyles.font13DarkBlueMedium,),//height: 55.h,
                    onPress: () {
                      validateThenDoLogin(context);
                    },),
                  verticalSpace(16),
                  // const TermsAndConditionsText(),
                  // verticalSpace(40),
                  const DontHaveAccountText(),
                  // const LoginBlocListener(),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  void validateThenDoLogin(BuildContext context) {
    // if (context.read<SignInCubit>().formKey.currentState!.validate()) {
    //   context.read<SignInCubit>().emitSignInStates();
    // }
  }
}