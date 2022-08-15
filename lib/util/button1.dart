import 'package:flutter/material.dart';


class Button1 extends StatelessWidget {
  const Button1({
    Key? key,
    required this.textStyle,
    required this.buttonColor,
    required this.text,
  }) : super(key: key);

  final TextStyle textStyle;
  final Color buttonColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: buttonColor,
      ),
      onPressed: () {},
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

