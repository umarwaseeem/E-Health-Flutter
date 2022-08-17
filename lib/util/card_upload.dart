import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardUpload extends StatelessWidget {
  const CardUpload({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(20),
        child: Container(
          padding: EdgeInsets.only(bottom: 15.h),
          height: 120.h,
          width: 282.w,
          decoration: BoxDecoration(
            color: Colors.white,
            // dotted border around the container
            border: Border.all(
              color: Colors.grey,
              width: 1,
              style: BorderStyle.values[1],
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/upload-icon.png"),
              SizedBox(height: 10.h),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
