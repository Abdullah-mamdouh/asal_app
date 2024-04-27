import 'package:asal_app/core/helpers/extensions.dart';
import 'package:asal_app/core/theming/assets.dart';
import 'package:asal_app/core/theming/colors.dart';
import 'package:asal_app/core/theming/styles.dart';
import 'package:asal_app/core/widgets/product-item_widget.dart';
import 'package:asal_app/features/products/ui/widgets/products_grid_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../logic/product_cubit.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  void initState() {
    super.initState();
    ProductCubit.get(context).emitGetProductsStates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              context.pop();
            },
            icon: CircleAvatar(
              radius: 20.r,
              backgroundColor: ColorsManager.yellowColor,
              child: SvgPicture.asset(AppAssets.arrowBack,width: 20.w,),
            ), ),
        centerTitle: true,
        title: Text(
          'المنتجات', style: TextStyles.font20GrayLight,
        ),
        elevation: 4.0,
        backgroundColor: Colors.white,
        shape: Border(
            bottom: BorderSide(
                color: ColorsManager.lighterGray.withOpacity(0.5),
                width: 6,
            )
        ),
      ),
      body: ProductsGridViewWidget(),
    );
  }
}
