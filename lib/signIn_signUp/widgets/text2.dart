import 'package:flutter/material.dart';

class Text2 extends StatelessWidget {
  const Text2({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    var welcomeScreenStyle = const TextStyle(
      color: Colors.white,
      fontFamily: "Poppins",
      fontSize: 35.0,
      fontWeight: FontWeight.w900,
    );
    return Container(
      margin: EdgeInsets.only(
        left: width * 0.17,
        right: width * 0.04,
        bottom: height * 0.02,
      ),
      alignment: Alignment.centerLeft,
      height: height * 0.05,
      width: width * 0.65,
      child: Text("Aderis Health", style: welcomeScreenStyle),
    );
  }
}
