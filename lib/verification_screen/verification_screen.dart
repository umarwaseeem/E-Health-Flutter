import 'package:aderis_health/login/widgets/checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../util/button2.dart';
import '../util/text_styles.dart';
import 'providers/id_verification_provide.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  static const routeName = "verification_screen";

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
                            "Verification",
                            style: textTheme.headline1,
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Image.asset("assets/images/verification.png"),
                      SizedBox(height: 20.h),
                      const Text(
                        "Click the type of ID will you using?",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 18.h),
                      Consumer<IdVerificationProvider>(
                        builder: (context, data, child) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            data.idTypes[0],
                            data.idTypes[1],
                            data.idTypes[2],
                          ],
                        ),
                      ),
                      SizedBox(height: 28.h),
                      const CheckBoxWidget(
                          text: "I don’t have one of these cards."),
                      SizedBox(height: 6.h),
                      SizedBox(
                        height: 68.h,
                        child: const CheckBoxWidget(
                          text:
                              "By using this service, you agree to\nBrebix Inc.’s Terms of service and\nPrivacy Policy",
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Button2(
                        text: "Skip And Continue",
                        onPress: () {},
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
