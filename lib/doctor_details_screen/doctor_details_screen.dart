import 'package:aderis_health/util/button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import 'providers/doctor_service_provider.dart';
import 'widgets/doctor_list_tile.dart';
import 'widgets/online_consult_widget.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({Key? key}) : super(key: key);

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  DateTime? _selectedDay;
  DateTime? _focusedDay;

  @override
  Widget build(BuildContext context) {
    final doctorServiceProviderData =
        Provider.of<DoctorServiceProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Doctor Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ScreenUtilInit(
          designSize: Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height,
          ),
          builder: (context, w) => Center(
            child: Column(
              children: [
                const DoctorListTile(),
                SizedBox(height: 8.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "About",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      const Text(
                        "Dr. Rebbeka is a Clinical Professor of Psychiatry, Obstetrics, Gynecology, and Reproductive Science at the Icahn School of Medicine at Mount Sinai which she first joined in 2007. She is an Attending in Psychiatry at Mount Sinai Medical Center. She also maintains a private practice in New York City.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          height: 1.2,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      const Text(
                        "Specialties",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Chip(
                            label: Text(
                              "Reproductive Psychiatry",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          const Chip(
                            label: Text(
                              "Psychiatry",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          doctorServiceProviderData.services[0],
                          doctorServiceProviderData.services[1],
                        ],
                      ),
                      SizedBox(height: 15.h),
                      if (doctorServiceProviderData.services[0].isSelected)
                        const OnlineConsultWidget(),
                      if (doctorServiceProviderData.services[1].isSelected)
                        TableCalendar(
                          selectedDayPredicate: (day) {
                            return isSameDay(_selectedDay, day);
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _focusedDay =
                                  focusedDay; // update `_focusedDay` here as well
                            });
                          },
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: DateTime.now(),
                        ),
                      SizedBox(height: 30.h),
                      Center(
                        child: SizedBox(
                          height: 50.h,
                          width: 300.w,
                          child: Button2(
                              text: "Get Instant Service", onPress: () {}),
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
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
