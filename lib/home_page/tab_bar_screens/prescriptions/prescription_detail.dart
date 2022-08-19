import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/profile_avatar.dart';

class PrescriptionDetail extends StatelessWidget {
  const PrescriptionDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Prescription Detail'),
        actions: const [
          ProfileAvatar(),
        ],
      ),
      body: ScreenUtilInit(
        designSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ),
        builder: (context, w) => Container(
          padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
          child: Container(
            height: 420.h,
            width: 315.w,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.w),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 12.w,
                  spreadRadius: 5.w,
                  offset: Offset(0, 12.w),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Patient Information",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text("Name"), Text("Hassan")],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text("NIC"), Text("557-4342-731-7774")],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text("Gender"), Text("Male")],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text("Time"), Text("15:00 - 15:30")],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text("Date"), Text("06 August 2022")],
                ),
                SizedBox(height: 12.h),
                const Divider(
                  thickness: 5,
                ),
                SizedBox(height: 12.h),
                const Text(
                  "Medicine Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Insuline Glulisine"),
                    Text("12ml take once a day")
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Orinase"),
                    Text("500 mg tablets - 2-3 times daily")
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Glucotrol"),
                    Text("12 mg tablets   -  take once a day")
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                    SizedBox(width: 12.w),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.download)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
