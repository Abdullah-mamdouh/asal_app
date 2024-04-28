import 'package:asal_app/core/helpers/constant.dart';
import 'package:asal_app/core/helpers/spacing.dart';
import 'package:asal_app/core/theming/colors.dart';
import 'package:asal_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/assets.dart';
import '../../../products/data/models/product_model.dart';

class NewProductItemWidget extends StatelessWidget {
  NewProductItemWidget({Key? key, required this.product}) : super(key: key);
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.w),
      ),
      shadowColor: ColorsManager.grayMedium,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
        //height: 240.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: [
            Container(
                height: 160.h,
                width: 160.w,
                color: ColorsManager.lighterGray.withOpacity(0.7),
                child: Image.network(
                  fit: BoxFit.cover,
                    product.mainImage ??
                    image,
                  errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                    return Image.network(image, fit: BoxFit.cover,);
                  },
                )),
            verticalSpace(10),
            Container(
              child: Text(
                product.name ?? 'عسل جبلي',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.rtl,
                style: TextStyles.font18BlackBold,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                product.shortDesc ?? 'جبلي يمني عسل جبلي',
                style: TextStyles.font12BlackBold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.rtl,
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
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
                  Text(
                    '(10)',
                    style: TextStyles.font11GrayRegular,
                  ),
                ],
              ),
            ), // satrs widget
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text(product.salePrice ??'22', style: TextStyles.font16BlackBold,),
                  Text('درهم إماراتي ', style: TextStyles.font16BlackBold,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
