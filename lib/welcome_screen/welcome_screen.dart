import 'package:flutter/material.dart';

import '../login/login_screen.dart';
import '../util/colors.dart';
import '../util/input_field.dart';
import 'widgets/get_started_button.dart';
import 'widgets/box_with_image.dart';
import 'widgets/text1.dart';
import 'widgets/text2.dart';
import 'widgets/top_right_ellipse.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const routeName = "wellcome_screen";

  @override
  Widget build(BuildContext context) {
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
                  Container(
                    width: width * 0.89,
                    height: height * 0.06,
                    margin: EdgeInsets.only(
                      left: width * 0.05,
                      right: width * 0.05,
                      top: 0.07 * height,
                    ),
                    child:
                        const InputField(hint: "abc@gmail.com", label: "Email"),
                  ),
                  GetStartedButton(
                    width: width,
                    height: height,
                    onPress: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
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
