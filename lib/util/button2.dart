import 'package:aderis_health/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'button1.dart';
import 'text_styles.dart';

class Button2 extends StatelessWidget {
  const Button2({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => Container(
        height: 52.h,
        width: 300.w,
        decoration: BoxDecoration(
          // apply shadow to the container
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
              // shadow on botom and right
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Button1(
          textStyle: textTheme.button!,
          buttonColor: button2Color,
          text: text,
          borderRadius: 30,
          onPress: () {
            onPress();
          },
        ),
      ),
    );
  }
}
