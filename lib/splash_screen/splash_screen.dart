import 'package:flutter/material.dart';

import '../util/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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

    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: Container(
          margin: EdgeInsets.only(
            left: width * 0.07,
            right: width * 0.15,
            top: 200,
          ),
          height: height,
          width: width,
          child: Row(
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
                    margin: const EdgeInsets.only(top: 100, bottom: 50),
                    child: Image.asset("assets/images/small-steth.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
