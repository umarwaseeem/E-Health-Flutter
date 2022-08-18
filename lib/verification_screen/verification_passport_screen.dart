import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_page/home_page.dart';
import '../util/button2.dart';
import '../util/card_upload.dart';
import '../util/text_styles.dart';
import '../util/upload_bottom_sheet.dart';

class VerificationPassportScreen extends StatelessWidget {
  const VerificationPassportScreen({Key? key}) : super(key: key);

  static const routeName = "verification_passport_screen";

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
              margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(15.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios_new),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Verification\nPassport",
                            style: textTheme.headline1,
                          ),
                        ],
                      ),
                      SizedBox(height: 50.h),
                      const Text(
                        "If you only have a digital image please take a photo or screenshot and upload it here.",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 30.h),
                      InkWell(
                        onTap: () {
                          showCupertinoModalPopup(
                            barrierColor: Colors.black.withOpacity(0.7),
                            context: context,
                            builder: (context) {
                              return const UploadBottomSheet();
                            },
                          );
                        },
                        child: const CardUpload(title: "Front Of Document"),
                      ),
                      SizedBox(height: 30.h),
                      InkWell(
                        onTap: () {
                          showCupertinoModalPopup(
                            barrierColor: Colors.black.withOpacity(0.7),
                            context: context,
                            builder: (context) {
                              return const UploadBottomSheet();
                            },
                          );
                        },
                        child: const CardUpload(title: "Back Of Document"),
                      ),
                      SizedBox(height: 160.h),
                      Button2(
                        text: "Save And Continue",
                        onPress: () {
                          Navigator.pushNamed(
                            context,
                            HomePageScreen.routeName,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
