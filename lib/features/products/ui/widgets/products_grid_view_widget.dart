import 'package:asal_app/core/widgets/indicator_widget.dart';
import 'package:asal_app/core/widgets/product-item_widget.dart';
import 'package:asal_app/features/products/logic/product_cubit.dart';
import 'package:asal_app/features/products/logic/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/state_handler_widget.dart';

class ProductsGridViewWidget extends StatelessWidget {
  const ProductsGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        var products = ProductCubit.products;
        return products.isNotEmpty?GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1.5,
              crossAxisCount: 2,
              mainAxisSpacing: 2.w,
              crossAxisSpacing: 2.h),
          itemBuilder: (context, index) {
            return ProductItemWidget(
              product: products[index],
            );
          },
        ): IndicatorWidget();
      },
    );
  }
}
