import 'package:asal_app/features/home/ui/widgets/product-item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsGridViewWidget extends StatelessWidget {
  const ProductsGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 8.w, crossAxisSpacing: 8.h),
      itemBuilder: (context, index) {
        return ProductItemWidget();
      },
    );
  }
}
