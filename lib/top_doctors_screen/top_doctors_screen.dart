import 'package:aderis_health/home_page/widgets/profile_avatar.dart';
import 'package:aderis_health/home_page/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/top_doctor_card.dart';

class TopDoctorsScreen extends StatelessWidget {
  const TopDoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        designSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ),
        builder: (context, w) => Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.black,
            title: const Text('Top Doctors'),
            backgroundColor: Colors.white,
            actions: const [
              ProfileAvatar(),
            ],
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 30.h),
                const SearchBar(),
                SizedBox(height: 30.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Top Doctors",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                const TopDoctorCard(),
                const TopDoctorCard(),
                SizedBox(
                  height: 33.h,
                  width: 368.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white70,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "See More",
                      style: TextStyle(
                        fontFamily: "Helvetica Now Display",
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
