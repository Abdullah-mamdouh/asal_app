import 'package:asal_app/core/helpers/spacing.dart';
import 'package:asal_app/core/theming/colors.dart';
import 'package:asal_app/core/theming/styles.dart';
import 'package:asal_app/features/products/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItemWidget extends StatelessWidget {
  ProductItemWidget({Key? key, required this.product}) : super(key: key);
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Card(
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
                child: Image.network(
                    fit: BoxFit.cover,
                    product.mainImage ??
                        'https://admin.ihoneyherb.com/products/uploads/thumbs/1711623598ProductImage.png')),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Container(
                        child: Text(
                          product.name ?? 'عسل جبلي',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                          style: TextStyles.font18BlackBold,
                        ),
                        constraints: BoxConstraints(maxWidth: 65.w),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 5.w),
                        child: Text(
                          product.shortDesc ?? 'جبلي يمني عسل جبلي',
                          style: TextStyles.font10BlackRegular,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                        ),
                        constraints: BoxConstraints(maxWidth: 65.w),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 5.w),
                        child: Text(
                          'عسل جبلي يمني عسل',
                          style: TextStyles.font10BlackRegular,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                        ),
                        constraints: BoxConstraints(maxWidth: 75.w),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            product.salePrice ?? '22',
                            style: TextStyles.font12YellowRegular,
                          ),
                          Container(
                            child: Text(
                              'درهم إماراتي ',
                              style: TextStyles.font12YellowRegular,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textDirection: TextDirection.rtl,
                            ),
                            constraints: BoxConstraints(maxWidth: 50.w),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5.w),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              product.listPrice ?? '45',
                              style: TextStyles.font10GrayRegularLineThrough,
                            ),
                            Container(
                              child: Text(
                                'درهم إماراتي',
                                style: TextStyles.font10GrayRegularLineThrough,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                              ),
                              constraints: BoxConstraints(maxWidth: 50.w),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5.w),
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                'خصم',
                                style: TextStyles.font12WhightRegular,
                              ),
                              Text(
                                '${product.discount}%',
                                style: TextStyles.font8WhightRegular,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            /*Padding(
              padding: EdgeInsets.only(right: 8.0.w),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Container(
                    width: ,
                    child: Text(
                      product.name ?? 'عسل جبلي',maxLines: 1,overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.rtl,
                      style: TextStyles.font18BlackBold,
                    ),constraints: BoxConstraints(maxWidth: 65.w),

                  ),
                  horizontalSpace(15),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(product.salePrice ?? '22', style: TextStyles.font12YellowRegular,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Container(
                      child: Text('درهم إماراتي ', style: TextStyles.font12YellowRegular,maxLines: 1,overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                      ),constraints: BoxConstraints(maxWidth: 50.w),
                    ),
                  ),
                ],
              ),
            ),*/

            /*Padding(
              padding: EdgeInsets.only(right: 10.0.w),
              child: Row(

                textDirection: TextDirection.rtl,
                children: [
                  Container(
                    child: Text(
                     product.shortDesc ?? 'جبلي يمني عسل جبلي',
                      style: TextStyles.font10BlackRegular,maxLines: 1,overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.rtl,
                    ),constraints: BoxConstraints(maxWidth: 65.w),
                  ),
                  horizontalSpace(15),
                  Text(product.listPrice ?? '45', style: TextStyles.font10GrayRegularLineThrough,),
                  Container(child: Text('درهم إماراتي', style: TextStyles.font10GrayRegularLineThrough,
                    maxLines: 1,overflow: TextOverflow.ellipsis,
                    textDirection: TextDirection.rtl,
                  ),constraints: BoxConstraints(maxWidth: 50.w),),
                ],
              ),
            ),*/
            /*Padding(
              padding: EdgeInsets.only(right: 10.0.w),
              child: Row(

                textDirection: TextDirection.rtl,
                children: [
                  Container(
                    child: Text(
                      'عسل جبلي يمني عسل',
                      style: TextStyles.font10BlackRegular,maxLines: 1,overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.rtl,
                    ),constraints: BoxConstraints(maxWidth: 75.w),
                  ),
                  horizontalSpace(15),
                  Container(
                    color: Colors.black,

                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text('خصم', style: TextStyles.font12WhightRegular,),
                        Text('${product.discount}%', style: TextStyles.font8WhightRegular,),
                      ],
                    ),
                  ),
                ],
              ),
            ),*/
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: Row(
                textDirection: TextDirection.rtl,
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
            ),
          ],
        ),
      ),
    );
  }
}
