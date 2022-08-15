import 'package:aderis_health/login/widgets/checkbox.dart';
import 'package:aderis_health/util/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../login/login_screen.dart';
import '../util/button1.dart';
import '../util/colors.dart';
import '../util/text_styles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const routeName = "signup_screen";

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.grey),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text("Sign Up", style: textTheme.headline1),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(LoginScreen.routeName);
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromRGBO(87, 98, 182, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  const InputField(hint: "Name", label: "Name"),
                  SizedBox(height: 14.h),
                  const InputField(hint: "Email", label: "Email"),
                  SizedBox(height: 14.h),
                  const InputField(hint: "Password", label: "Email"),
                  SizedBox(height: 14.h),
                  const InputField(hint: "Zip Code", label: "Zip Code"),
                  SizedBox(height: 14.h),
                  const InputField(
                    hint: "How did you hear about us?",
                    label: "How did you hear about us?",
                    suffixIcon: Icons.keyboard_arrow_down,
                  ),
                  SizedBox(height: 5.h),
                  SizedBox(
                    // margin: EdgeInsets.only(right: 16.w, left: 20.w),
                    // color: Colors.red,
                    height: 34.h,
                    width: 380.w,
                    child: const CheckBoxWidget(
                      text:
                          "I agree to receive Email and SMS that may contain\npersonal health information.",
                    ),
                  ),
                  SizedBox(height: 100.h),
                  Container(
                    height: 51.h,
                    width: 390.w,
                    decoration: BoxDecoration(
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
                      text: "Login",
                      borderRadius: 30,
                      onPress: () {},
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text("Forgot Your Password", style: textTheme.bodyText1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
