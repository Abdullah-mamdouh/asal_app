import 'package:asal_app/core/theming/assets.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/home_model.dart';
class SliderWidget extends StatefulWidget {
  SliderWidget({Key? key, required this.sliderModel}) : super(key: key);
  List<SliderModel> sliderModel;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {

  CarouselController buttonCarouselController = CarouselController();
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            height: 140.h,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            pageSnapping: true,
            aspectRatio: 2.0,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            onPageChanged: (index, reason) {
              setState(() {
                _index = index;
              });
            },
          ),
          items: List.generate(widget.sliderModel.length,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
                      height: 140.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                widget.sliderModel[index].image!,
                              )
                          ),
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  ),),
        ),
      ],
    );
  }
}
