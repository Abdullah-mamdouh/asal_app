import 'package:asal_app/core/helpers/constants_strings.dart';
import 'package:asal_app/core/helpers/spacing.dart';
import 'package:asal_app/core/theming/assets.dart';
import 'package:asal_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
class OthersOptionsLoginWidget extends StatelessWidget {
  const OthersOptionsLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(signinWithKey, style: TextStyles.font16LightGrayMedium,),
        verticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){}, icon: Image.asset(AppAssets.googleIcon)),
            verticalSpace(10),
            IconButton(onPressed: (){}, icon: Image.asset(AppAssets.appleIcon)),
            verticalSpace(10),
            IconButton(onPressed: (){}, icon: Image.asset(AppAssets.facebookIcon)),

          ],
        )
      ],
    );
  }
}
