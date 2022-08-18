import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DoctorListTile extends StatelessWidget {
  const DoctorListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => Container(
        alignment: Alignment.center,
        height: 120.h,
        width: double.infinity,
        color: Colors.grey,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.black45,
            radius: 50,
            child: Image.asset(
              'assets/images/doctor.png',
              fit: BoxFit.cover,
            ),
          ),
          title: const Text(
            "Dr Rebekka",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: const Text(
            "Reproductive Psychiatry & Psychiatry",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
