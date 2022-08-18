import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => Container(
        margin: EdgeInsets.only(left: 40.w),
        alignment: Alignment.centerLeft,
        child: Text(
          "Doctors",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Helvetica Now Display",
            fontSize: 30.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
