import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  const Text1({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
      var welcomeScreenStyle = const TextStyle(
      color: Colors.white,
      fontFamily: "Poppins",
      fontSize: 35.0,
      fontWeight: FontWeight.w900,
    );
    return Container(
      height: height * 0.05,
      width: width * 0.71,
      margin: EdgeInsets.only(
        left: width * 0.09,
        right: width * 0.41,
        top: height * 0.16,
      ),
      child: Text("Welcome To,", style: welcomeScreenStyle),
    );
  }
}
