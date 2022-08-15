import 'package:flutter/material.dart';


class BoxWithImage extends StatelessWidget {
  const BoxWithImage({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.30,
      width: width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Image.asset("assets/images/dr_illus.png"),
    );
  }
}
