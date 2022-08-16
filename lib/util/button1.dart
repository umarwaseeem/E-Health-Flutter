import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({
    Key? key,
    required this.textStyle,
    required this.buttonColor,
    required this.text,
    required this.borderRadius, required this.onPress,
  }) : super(key: key);

  final TextStyle textStyle;
  final Color buttonColor;
  final String text;
  final double borderRadius;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: buttonColor,
      ),
      onPressed: onPress == null ? null :() {
        onPress!();
      },
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
