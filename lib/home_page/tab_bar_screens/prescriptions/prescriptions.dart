import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/prescriptions_list.dart';

class PrescriptionsPage extends StatelessWidget {
  const PrescriptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenUtilInit(
        designSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ),
        builder: (context, w) => Center(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              ...prescriptions,
            ],
          ),
        ),
      ),
    );
  }
}
