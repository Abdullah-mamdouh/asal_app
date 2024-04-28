import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/assets.dart';
import '../../../../core/theming/styles.dart';

class ProductsIconsWidget extends StatelessWidget {
  const ProductsIconsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      textDirection: TextDirection.rtl,
      children: [
        IconWidget('أعشاب', AppAssets.herbsIcon),
        IconWidget('صحة وجمال', AppAssets.beautyIcon),
        IconWidget("زيوت", AppAssets.oilIcon),
        IconWidget("عسل", AppAssets.honeyIcon),

      ],
    );
  }
}

class IconWidget extends StatelessWidget {
  String? iconText;
  String? iconPath;

  IconWidget(this.iconText, this.iconPath);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        GestureDetector(
          child: Container(
            height: 60.h,
            width: 70.w,
            child: Image.asset(iconPath!,fit: BoxFit.fill,),
          ),
        ),
        Text(
          iconText!,
          style: TextStyles.font16BlackBold,
        ),
      ],
    );
  }
}
