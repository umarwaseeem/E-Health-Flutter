import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../util/colors.dart';

class SmsCodeWidget extends StatefulWidget {
  const SmsCodeWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SmsCodeWidget> createState() => _SmsCodeWidgetState();
}

class _SmsCodeWidgetState extends State<SmsCodeWidget> {
  final bool _isFilled = false;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, w) => Container(
        alignment: Alignment.center,
        width: 75.w,
        height: 75.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(7, 15),
            ),
          ],
        ),
        child: TextField(
          maxLength: 1,
          enabled: true,
          // iphone number keyboard
          keyboardType: TextInputType.number,

          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: notFilledBorderColor,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: filledBorderColor,
                width: 1,
              ),
            ),
            counterText: "",
          ),
        ),
      ),
    );
  }
}
