import 'package:flutter/material.dart';

class Ellipse extends StatelessWidget {
  const Ellipse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Image.asset(
        "assets/images/ellipse.png",
      ),
    );
  }
}
