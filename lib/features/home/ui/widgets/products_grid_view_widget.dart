import 'package:asal_app/core/widgets/indicator_widget.dart';
import 'package:asal_app/core/widgets/product-item_widget.dart';
import 'package:asal_app/features/home/logic/home_cubit.dart';
import 'package:asal_app/features/home/logic/home_state.dart';
import 'package:asal_app/features/products/logic/product_cubit.dart';
import 'package:asal_app/features/products/logic/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/state_handler_widget.dart';
import '../../../products/data/models/product_model.dart';

class ProductsGridViewWidget extends StatelessWidget {
  ProductsGridViewWidget({Key? key, required this.products}) : super(key: key);
  List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        // var products = HomeCubit.homeProducts;
        return products.isNotEmpty?GridView.builder(
          itemCount: 4,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
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
