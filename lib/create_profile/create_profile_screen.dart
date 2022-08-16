import 'package:aderis_health/util/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../add_insurance_screen/add_insurance_screen.dart';
import '../util/button1.dart';
import '../util/colors.dart';
import '../util/text_styles.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

  static const routeName = "create_profile_screen;";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ScreenUtilInit(
            designSize: const Size(428, 926),
            builder: (context, widget) => Container(
              margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 40.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Profile", style: textTheme.headline1),
                      IconButton(
                        icon: const Icon(Icons.edit_note_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    margin: EdgeInsets.only(top: 30.h, bottom: 20.h),
                    height: 170.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: mainColor,
                          radius: 60.w,
                          child: Image.asset(
                            "assets/images/profile-pic.png",
                            height: 100.h,
                            width: 100.w,
                          ),
                        ),
                        const Text(
                          "Upload Photo Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50.h,
                        width: 160.w,
                        child: const InputField(
                          hint: "First Name",
                          label: "First Name",
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 160.w,
                        child: const InputField(
                          hint: "Last Name",
                          label: "Last Name",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    height: 50.h,
                    width: 370.w,
                    child: const InputField(
                      hint: "Email",
                      label: "Email",
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    height: 50.h,
                    width: 370.w,
                    child: const InputField(
                      hint: "Phone Number",
                      label: "Phone Number",
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    height: 50.h,
                    width: 370.w,
                    child: InputField(
                      hint: "Select Gender",
                      label: "Select Gender",
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    height: 50.h,
                    width: 370.w,
                    child: const InputField(
                      hint: "Date of Birth",
                      label: "Date of Birth",
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    height: 50.h,
                    width: 370.w,
                    child: const InputField(hint: "Address", label: "Address"),
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    height: 60.h,
                    width: 370.w,
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
                        text: "Confirm And Save",
                        borderRadius: 30,
                        onPress: () {
                          Navigator.pushNamed(
                              context, AddInsuranceScreen.routeName);
                        }),
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
