import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/colors.dart';

class InstantAppointmentCard extends StatelessWidget {
  const InstantAppointmentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => Container(
        padding:
            EdgeInsets.only(top: 15.h, left: 16.w, right: 16.w, bottom: 6.h),
        height: 140.h,
        width: 335.w,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              spreadRadius: 4,
            ),
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Instant Appointment",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Helvetica Now Display",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 170.w,
                  child: Text(
                    "Lorem ipsum dolor sit amet, stsfa consectetur.",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Helvetica Now Display",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(87, 98, 182, 0.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Read More",
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Image.asset("assets/images/appointment.png")
          ],
        ),
      ),
    );
  }
}
