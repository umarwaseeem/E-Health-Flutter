import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/colors.dart';
import 'tab_bar_screens/appointments/appointments.dart';
import 'tab_bar_screens/home.dart';
import 'tab_bar_screens/messages/messages.dart';
import 'tab_bar_screens/prescriptions/prescriptions.dart';
import 'widgets/profile_avatar.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  String appBarTitle = "Welcome XYZ";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      animationDuration: const Duration(milliseconds: 400),
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            elevation: 3,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: Text(
              appBarTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            actions: const [
              ProfileAvatar(),
            ],
          ),
          body: const TabBarView(
            children: [
              Home(),
              MessagesPage(),
              AppointmentsPage(),
              PrescriptionsPage(),
            ],
          ),
          bottomNavigationBar: ScreenUtilInit(
            designSize: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height,
            ),
            builder: (context, w) => Padding(
              padding: EdgeInsets.only(bottom: 20.0.h),
              child: TabBar(
                onTap: (index) {
                  setState(() {
                    switch (index) {
                      case 0:
                        appBarTitle = "Welcome XYZ";
                        break;
                      case 1:
                        appBarTitle = "Messages";
                        break;
                      case 2:
                        appBarTitle = "Appointments";
                        break;
                      case 3:
                        appBarTitle = "Prescriptions";
                        break;
                    }
                  });
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
          ),
        ),
      ),
    );
  }
}
