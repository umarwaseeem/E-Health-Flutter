import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../address_screen/address_screen.dart';
import '../util/button1.dart';
import '../util/colors.dart';
import '../util/text_styles.dart';
import '../util/card_upload.dart';

class InsuranceCardsScreen extends StatelessWidget {
  const InsuranceCardsScreen({Key? key}) : super(key: key);

  static const routeName = "insurance_cards_screen";

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
              margin: EdgeInsets.only(left: 20.w, right: 30.w, top: 40.h),
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
                        Text("Add Insurance \nCards Here",
                            style: textTheme.headline1),
                      ],
                    ),
                    SizedBox(height: 70.h),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40.w),
                      height: 88.h,
                      width: 252.w,
                      child: const Text(
                        "If you only have a digital image please take a photo or screenshot and upload it here.",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    const CardUpload(title: "Upload Front Card"),
                    SizedBox(height: 30.h),
                    const CardUpload(title: "Upload Back Card"),
                    SizedBox(height: 100.h),
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
                        text: "Save And Continue",
                        borderRadius: 30,
                        onPress: () {
                          Navigator.pushNamed(
                            context,
                            AddressScreen.routeName,
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
      ),
    );
  }
}
