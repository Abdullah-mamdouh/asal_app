import 'package:asal_app/core/helpers/spacing.dart';
import 'package:asal_app/core/theming/colors.dart';
import 'package:asal_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/assets.dart';

class SelectedProductItemWidget extends StatelessWidget {
  const SelectedProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.w),
      ),
      shadowColor: ColorsManager.grayMedium,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        height: 240.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
                height: 160.h,
                width: 160.w,
                color: ColorsManager.lighterGray.withOpacity(0.7),
                child: Image.asset(AppAssets.sliderImage,height: 160.h,)),
            Text(
              'عسل جبلي',
              style: TextStyles.font18BlackBold,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text('عسل النحل معروف عند معظم الناس كمادة غذائية',
                maxLines: 2,
                overflow: TextOverflow.fade,
                style: TextStyles.font12BlackBold,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text('درهم إماراتي ', style: TextStyles.font12YellowRegular,),
            ),
            // satrs widget
            Row(
              children: [
                Text(
                  '(10)',
                  style: TextStyles.font11GrayRegular,
                ),
                Row(
                  children: List.generate(
                    5,
                        (index) => Icon(
                      Icons.star,
                      size: 12.w,
                      color: ColorsManager.mainColor,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text('22', style: TextStyles.font12RedRegular,),
                Text('درهم إماراتي ', style: TextStyles.font12RedRegular,),
              ],
            ),

            Row(

              textDirection: TextDirection.rtl,
              children: [
                Text('45', style: TextStyles.font10GrayRegularLineThrough,),
                Text('درهم إماراتي', style: TextStyles.font10GrayRegularLineThrough,),
              ],
            ),
            Container(
              color: Colors.black,

              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text('خصم', style: TextStyles.font12WhightRegular,),
                  Text('40%', style: TextStyles.font8WhightRegular,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
