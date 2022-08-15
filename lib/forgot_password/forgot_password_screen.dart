import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/button1.dart';
import '../util/colors.dart';
import '../util/text_styles.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static const routeName = "forgot_password_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ScreenUtilInit(
            designSize: const Size(428, 926),
            builder: (context, widget) => Container(
              margin: EdgeInsets.all(20.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(width: 0.w),
                      Text("Forgot Password", style: textTheme.headline1),
                    ],
                  ),
                  SizedBox(height: 50.h),
                  Image.asset("assets/images/forgot-pass.png"),
                  const Text(
                    "Select which contact details should we use to reset your password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 10,
                    child: Container(
                      alignment: Alignment.center,
                      height: 130.h,
                      width: 370.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onTap: () {},
                        // splashColor: const Color.fromARGB(248, 157, 162, 197),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(20),
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/images/msg-icon.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            "Via Msg",
                            style: titleStyle,
                          ),
                          subtitle:
                              Text("+11 11******11", style: subtitleStyle),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 10,
                    child: Container(
                      alignment: Alignment.center,
                      height: 130.h,
                      width: 370.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onTap: () {},
                        // splashColor: const Color.fromARGB(248, 157, 162, 197),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(20),
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/images/mail-icon.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            "Via Email",
                            style: titleStyle,
                          ),
                          subtitle: Text("abc@gmail.com", style: subtitleStyle),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60.h),
                  Container(
                    height: 51.h,
                    width: 390.w,
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
                      text: "Continue",
                      borderRadius: 30,
                      onPress: () {},
                    ),
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
