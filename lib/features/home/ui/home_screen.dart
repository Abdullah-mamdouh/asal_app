
import 'package:asal_app/core/helpers/spacing.dart';
import 'package:asal_app/core/theming/assets.dart';
import 'package:asal_app/core/theming/colors.dart';
import 'package:asal_app/core/theming/styles.dart';
import 'package:asal_app/core/widgets/indicator_widget.dart';
import 'package:asal_app/features/auth/data/models/user_model.dart';
import 'package:asal_app/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:asal_app/features/auth/ui/login_screen/widgets/title_widget.dart';
import 'package:asal_app/features/home/logic/home_cubit.dart';
import 'package:asal_app/features/home/ui/widgets/label_widget.dart';
import 'package:asal_app/features/home/ui/widgets/new_products_widget.dart';
import 'package:asal_app/features/home/ui/widgets/products_grid_view_widget.dart';
import 'package:asal_app/features/home/ui/widgets/products_icon_widget.dart';
import 'package:asal_app/features/home/ui/widgets/products_selected_widget.dart';
import 'package:asal_app/features/home/ui/widgets/slider_widget.dart';
import 'package:asal_app/features/products/logic/product_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../logic/home_state.dart';
import 'widgets/search_text_field_widget.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.user, }) : super(key: key);
  UserDataModel user;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
            iconSize: 40.w,
            icon: Image.asset(AppAssets.shareIcon)),
        title: SearchTextFieldWidget(),
      ),

      body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state){
          return HomeCubit.newProducts != null ?SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 2.w),
              child: Column(
                children: [
                  SliderWidget(sliderModel: HomeCubit.homeSlider,),
                  verticalSpace(20),
                  ProductsIconsWidget(),
                  verticalSpace(20),
                  LabelWidget(title: 'المنتجات',),
                  verticalSpace(10),
                  ProductsGridViewWidget(products: HomeCubit.homeProducts,),
                  verticalSpace(30),
                  LabelWidget(title: 'منتجات مختارة لك',),
                  ProductsSelectedWidget(products: HomeCubit.homeSelectedProducts,),
                  verticalSpace(30),
                  LabelWidget(title: 'منتجات جديدة',),
                  NewProductsWidget(products: HomeCubit.newProducts),
                ],
              ),
            ),
          ) : IndicatorWidget();
        }
      ),
    );
  }
}
