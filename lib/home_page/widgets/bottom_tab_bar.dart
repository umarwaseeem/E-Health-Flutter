import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/colors.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => Padding(
        padding: EdgeInsets.only(bottom: 20.0.h),
        child: TabBar(
          onTap: (index) {
            // ignore: todo
            //TODO navigation
          },
          indicatorColor: mainColor,
          indicatorWeight: 3,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: mainColor,
          labelStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelColor: Colors.black.withOpacity(0.5),
          unselectedLabelStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
          tabs: const [
            Tab(
              text: 'Home',
              icon: Icon(Icons.home_outlined),
            ),
            Tab(
              text: 'Messages',
              icon: Icon(Icons.chat_outlined),
            ),
            Tab(
              text: 'Appointments',
              icon: Icon(Icons.calendar_month_rounded),
            ),
            Tab(
              text: 'Prescriptions',
              icon: Icon(Icons.local_hospital_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
