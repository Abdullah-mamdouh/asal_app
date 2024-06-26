import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:asal_app/core/helpers/extensions.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'ليس لدي حساب؟',
            style: TextStyles.font16LightGraySemiBold,
          ),
          TextSpan(
            text: ' سجل الان',
            style: TextStyles.font13GreenSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // context.pushReplacementNamed(Routes.signupScreen);
              },
          ),
        ],
      ),
    );
  }
}