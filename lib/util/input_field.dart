import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({
    Key? key,
    this.suffixIcon,
    required this.hint,
    required this.label,
  }) : super(key: key);

  final String hint;
  final String label;
  final IconData? suffixIcon;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  // bool open = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
            icon: Icon(
              widget.suffixIcon,
              color: const Color.fromARGB(255, 122, 100, 100),
            ),
            onPressed: () {}),
        hintText: widget.hint,
        labelText: widget.label,
        fillColor: Colors.white,
        filled: true,
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontFamily: "Inter",
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
