import 'package:aderis_health/util/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../add_payment_method/add_payment_method_screen.dart';
import '../util/button1.dart';
import '../util/colors.dart';
import '../util/text_styles.dart';

class PrefferedPharmacyScreen extends StatelessWidget {
  const PrefferedPharmacyScreen({Key? key}) : super(key: key);

  static const String routeName = '/preffered_pharmacy_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ScreenUtilInit(
            designSize: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height,
            ),
            builder: (context, widget) => Container(
              margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 40.h),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_new),
                        ),
                        SizedBox(width: 20.w),
                        Text(
                          "Select Preffered\nPharmacy",
                          style: textTheme.headline1,
                        ),
                      ],
                    ),
                    SizedBox(height: 50.h),
                    SizedBox(
                      height: 50.h,
                      width: 320.w,
                      child: InputField(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_down),
                        ),
                        hint: "Select Pharmacy",
                        label: "Select Pharmacy",
                      ),
                    ),
                    SizedBox(height: 400.h),
                    Container(
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
                        text: "Skip And Continue",
                        borderRadius: 30,
                        onPress: () {
                          Navigator.pushNamed(context, AddPaymentMethodScreen.routeName );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
