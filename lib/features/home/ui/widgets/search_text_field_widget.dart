
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_form_field.dart';

class SearchTextFieldWidget extends StatelessWidget {
  SearchTextFieldWidget({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: searchController,
      hintText: 'ابحث عن المنتج',
      suffixIcon: IconButton(onPressed: (){},
          iconSize: 40.w,
          icon: Icon(Icons.search)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a valid password';
        }
      },
    );
  }
}
