import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../util/colors.dart';
import '../prescription_detail.dart';

class PrescriptionCard extends StatelessWidget {
  const PrescriptionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => Container(
        margin: EdgeInsets.only(bottom: 20.h),
        padding: EdgeInsets.all(16.w),
        width: 330.w,
        height: 130.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.w),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.w,
              spreadRadius: 5.w,
              offset: Offset(0.w, 5.w),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Diabetes - Mr James",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  height: 30.h,
                  width: 160.w,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.calendar_month_rounded,
                          color: Colors.grey,
                        ),
                        Text(
                          "6 August 2022",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset("assets/images/prescription.png"),
                Container(
                  alignment: Alignment.center,
                  height: 30.h,
                  width: 100.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PrescriptionDetail(),
                        ),
                      );
                    },
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
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
