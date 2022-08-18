import 'package:aderis_health/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../providers/appointment_type_provider.dart';

class AppointmentType extends StatefulWidget {
  AppointmentType({
    Key? key,
    required this.title,
    required this.selected,
  }) : super(key: key);

  final String title;
  bool selected;

  @override
  State<AppointmentType> createState() => _AppointmentTypeState();
}

class _AppointmentTypeState extends State<AppointmentType> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => Consumer<AppointmentTypeProvider>(
        builder: (context, data, child) => InkWell(
          onTap: () {
            data.selectAppointmentType(
              data.appointmentType.indexOf(widget),
            );
          },
          child: AnimatedOpacity(
            opacity: widget.selected ? 1.0 : 0.8,
            duration: const Duration(milliseconds: 300),
            child: Container(
              alignment: Alignment.center,
              height: 32.h,
              width: 156.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.w),
                color: widget.selected ? mainColor : Colors.white,
              ),
              child: Text(
                widget.title,
                style: TextStyle(
                  color: widget.selected ? Colors.white : Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
