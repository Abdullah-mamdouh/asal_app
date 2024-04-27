import 'package:asal_app/core/theming/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_form_field.dart';

class SearchTextFieldWidget extends StatelessWidget {
  SearchTextFieldWidget({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: AppTextFormField(
        controller: searchController,
        hintText: 'ابحث عن المنتج',
        hintTextDirection: TextDirection.rtl,
        suffixIcon: IconButton(
            onPressed: () {},
            iconSize: 50.w,
            icon: Image.asset(AppAssets.searchIcon,height: 60.h,)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a valid password';
          }
        },
      ),
    );
  }
}
