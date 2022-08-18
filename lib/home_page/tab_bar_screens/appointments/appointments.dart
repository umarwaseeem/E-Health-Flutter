import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'providers/appointment_type_provider.dart';
import 'providers/appointments_list.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenUtilInit(
        designSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ),
        builder: (context, w) => Center(
          child: Consumer<AppointmentTypeProvider>(
            builder: (context, data, child) => Column(
              children: [
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [...data.appointmentType],
                ),
                SizedBox(height: 25.h),
                if (data.appointmentType[0].selected)
                  ...upComingAppointments
                else
                  ...previousAppointments
              ],
            ),
          ),
        ),
      ),
    );
  }
}
