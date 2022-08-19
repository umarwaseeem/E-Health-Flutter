import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/colors.dart';

class TopDoctorCard extends StatelessWidget {
  const TopDoctorCard({
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
        margin: EdgeInsets.only(bottom: 20.h),
        padding: EdgeInsets.only(left: 10.w, bottom: 10.h, top: 10.h),
        height: 100.h,
        width: 390.w,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.w,
              spreadRadius: 5.w,
              offset: Offset(0.w, 5.w),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.w),
        ),
        child: ListTile(
          leading: const CircleAvatar(
            radius: 25,
          ),
          title: const Text(
            'Doctor Rebekka',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Reproductive Psychiatry ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Text(
                    "Tuesday - Friday",
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    "  |  6 Years Experience",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          trailing: const SizedBox(
            height: double.infinity,
            child: Text(
              "Book\nNow\n",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
