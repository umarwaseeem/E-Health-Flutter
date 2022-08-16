import 'package:aderis_health/home_page/home_page.dart';
import 'package:aderis_health/util/input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/button1.dart';
import '../util/colors.dart';
import '../util/text_styles.dart';

class CreateNewPassScreen extends StatelessWidget {
  const CreateNewPassScreen({Key? key}) : super(key: key);

  static const routeName = "create-new-pass-screen";

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
                      Text("Create New Password", style: textTheme.headline1),
                    ],
                  ),
                  SizedBox(height: 50.h),
                  Image.asset("assets/images/new-pass.png"),
                  SizedBox(height: 50.h),
                  SizedBox(
                    height: 50.h,
                    width: 390.w,
                    child: InputField(
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "show",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        hint: "Enter New Password",
                        label: "Enter New Password"),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 50.h,
                    width: 390.w,
                    child: InputField(
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "show",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      hint: "Confirm Password",
                      label: "Confirm Password",
                    ),
                  ),
                  SizedBox(height: 150.h),
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
                      text: "Save",
                      borderRadius: 30,
                      onPress: () {
                        Future.delayed(const Duration(seconds: 3), () {
                          Navigator.pushReplacementNamed(
                              context, HomePageScreen.routeName);
                        });

                        showCupertinoModalPopup(
                          barrierColor: Colors.black.withOpacity(0.7),
                          context: context,
                          builder: (context) {
                            return Center(
                              child: Container(
                                margin: EdgeInsets.all(20.w),
                                height: 480.h,
                                width: 348.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
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
                                child: Column(
                                  children: [
                                    SizedBox(height: 20.h),
                                    Image.asset(
                                      "assets/images/new-pass-success.png",
                                    ),
                                    SizedBox(height: 50.h),
                                    const Text(
                                      "Congratulations",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontSize: 28,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Container(
                                      margin: EdgeInsets.all(30.w),
                                      child: const Text(
                                        "Your account is ready to use. You will be redirected to the Home page in a few seconds.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          decoration: TextDecoration.none,
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
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
