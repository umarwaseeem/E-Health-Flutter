import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.89,
      height: height * 0.06,
      margin: EdgeInsets.only(
        left: width * 0.05,
        right: width * 0.05,
        top: 0.07 * height,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "abc@gmail.com",
          labelText: "Enter Your Email",
          fillColor: Colors.white,
          filled: true,
          labelStyle: const TextStyle(
            color: Colors.grey,
            fontFamily: "Poppins",
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
