import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../util/colors.dart';
import '../providers/doctor_service_provider.dart';

class DoctorServiceTypeWidget extends StatefulWidget {
  DoctorServiceTypeWidget({
    Key? key,
    required this.serviceName,
    required this.isSelected,
  }) : super(key: key);

  final String serviceName;
  bool isSelected;

  @override
  State<DoctorServiceTypeWidget> createState() =>
      _DoctorServiceTypeWidgetState();
}

class _DoctorServiceTypeWidgetState extends State<DoctorServiceTypeWidget> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => Consumer<DoctorServiceProvider>(
        builder: (context, data, child) => InkWell(
          onTap: () {
            data.selectService(
              data.services.indexOf(widget),
            );
          },
          child: AnimatedOpacity(
            opacity: widget.isSelected ? 1.0 : 0.7,
            duration: const Duration(milliseconds: 300),
            child: Container(
              alignment: Alignment.center,
              height: 40.h,
              width: 146.w,
              decoration: BoxDecoration(
                color: widget.isSelected ? mainColor : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                widget.serviceName,
                style: TextStyle(
                  color: widget.isSelected ? Colors.white : Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
