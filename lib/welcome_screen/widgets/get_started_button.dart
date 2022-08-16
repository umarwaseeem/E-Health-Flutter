import 'package:flutter/material.dart';

import '../../util/button1.dart';
import '../../util/colors.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    Key? key,
    required this.width,
    required this.height,
    required this.onPress,
  }) : super(key: key);

  final double width;
  final double height;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    var getStartedButtonTextStyle = const TextStyle(
      color: Colors.white,
      fontFamily: "Inter",
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
    );
    return Container(
      width: width * 0.89,
      height: height * 0.06,
      margin: EdgeInsets.only(
        left: width * 0.05,
        right: width * 0.05,
        top: height * 0.06,
        bottom: 10,
      ),
      child: Button1(
        onPress: onPress,
        textStyle: getStartedButtonTextStyle,
        buttonColor: getStartedButtonColor,
        text: 'Get Started',
        borderRadius: 8,
      ),
    );
  }
}
