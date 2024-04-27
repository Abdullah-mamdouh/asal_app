import 'package:asal_app/core/helpers/extensions.dart';
import 'package:asal_app/core/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../auth/ui/login_screen/widgets/title_widget.dart';
class LabelWidget extends StatelessWidget {
  LabelWidget({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        textDirection: TextDirection.rtl,
        children: [
          TitleWidget(title: title),
          GestureDetector(
            onTap: (){
              context.pushNamed(Routes.productsScreen);
            },
            child: Container(
              height: 30.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: ColorsManager.yellowColor,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text('More', style: TextStyles.font12WhightRegular,),
            
            ),
          ),
        ],
      ),
    );
  }
}
