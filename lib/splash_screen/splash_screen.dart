import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/colors.dart';
import '../welcome_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, WelcomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var splashTextStyle = const TextStyle(
      color: Colors.white,
      fontFamily: "Poppins",
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      height: 0,
    );

    // ScreenUtil.init(
    //   context,
    //   designSize: const Size(375, 926),
    // );

    return SafeArea(
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, widget) => Scaffold(
          backgroundColor: mainColor,
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                left: 35.w, // 35
                right: 70.w, // 70
                top: 300.h, // 20
              ),
              height: height,
              width: width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/steth.png",
                      ),
                      SizedBox(width: width * 0.03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("ADERIS", style: splashTextStyle),
                          Text("HEALTH", style: splashTextStyle),
                          Container(
                            margin: EdgeInsets.only(top: 100.h, bottom: 50.h),
                            child: Image.asset("assets/images/small-steth.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Center(child: CircularProgressIndicator()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
