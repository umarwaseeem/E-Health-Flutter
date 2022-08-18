import 'package:flutter/material.dart';

import 'tab_bar_screens/appointments.dart';
import 'tab_bar_screens/home.dart';
import 'tab_bar_screens/messages.dart';
import 'tab_bar_screens/prescriptions.dart';
import 'widgets/bottom_tab_bar.dart';
import 'widgets/profile_avatar.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

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
            title: const Text(
              'Welcome XYZ',
              style: TextStyle(
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
          bottomNavigationBar: const BottomTabBar(),
        ),
      ),
    );
  }
}
