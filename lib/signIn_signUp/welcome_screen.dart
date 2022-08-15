import 'package:flutter/material.dart';

import '../util/colors.dart';
import 'widgets/get_started_button.dart';
import 'widgets/box_with_image.dart';
import 'widgets/email_field.dart';
import 'widgets/text1.dart';
import 'widgets/text2.dart';
import 'widgets/top_right_ellipse.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var getStartedButtonTextStyle = const TextStyle(
      color: Colors.white,
      fontFamily: "Inter",
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
    );
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              const Ellipse(),
              Column(
                children: [
                  Text1(height: height, width: width),
                  Text2(width: width, height: height),
                  BoxWithImage(height: height, width: width),
                  EmailField(width: width, height: height),
                  GetStartedButton(width: width, height: height),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

