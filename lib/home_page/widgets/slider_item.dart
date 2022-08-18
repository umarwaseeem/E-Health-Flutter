import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/colors.dart';

class SliderItem extends StatefulWidget {
  SliderItem({
    Key? key,
    this.visible,
    required this.image,
    required this.id,
  }) : super(key: key);

  final String image;
  final int id;
  bool? visible;

  @override
  State<SliderItem> createState() => _SliderItemState();
}

class _SliderItemState extends State<SliderItem> {
  // var xBlur = 2.0;
  // var yBlur = 2.0;
  // String visible = "1.0";
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
        child: Column(
          children: [
            Container(
              width: 175.w,
              height: 170.h,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(widget.image, fit: BoxFit.cover),
            ),
            Container(
              alignment: Alignment.center,
              width: 240.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Text(
                widget.id.toString(),
                style: const TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
