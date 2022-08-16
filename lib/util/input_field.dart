import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({
    Key? key,
    this.suffixIcon,
    this.prefixIcon,
    this.obscure,
    required this.hint,
    required this.label,
  }) : super(key: key);

  final String hint;
  final String label;
  final Widget? suffixIcon;
  final bool? obscure;
  final Widget? prefixIcon;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  // bool open = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscure ?? false,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        hintText: widget.hint,
        labelText: widget.label,
        fillColor: const Color.fromRGBO(232, 232, 232, 1),
        filled: true,
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontFamily: "Inter",
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
