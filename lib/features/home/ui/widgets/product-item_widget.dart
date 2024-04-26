import 'package:asal_app/core/theming/colors.dart';
import 'package:asal_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      child: Column(
        children: [
          Container(
            height: 180.h,
            color: Colors.red,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.h),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'عسل جبلي',
                        style: TextStyles.font24BlackBold,
                      ),
                      Text(
                        'عسل جبلي يمني عسل',
                        style: TextStyles.font12BlackRegular,
                      ),
                      Text(
                        'عسل جبلي يمني عسل',
                        style: TextStyles.font12BlackRegular,
                      ),
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
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('22 درهم إماراتي', style: TextStyles.font14YellowRegular,),
                      Text('45 درهم إماراتي', style: TextStyles.font11GrayRegularLineThrough,),
              
                      Container(
                        color: Colors.black,
              
                        child: Row(
                          children: [
                            Text('خصم', style: TextStyles.font14WhightExtraLight,),
                            Text('40%', style: TextStyles.font12WhightExtraLight,),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
