import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  late final bool isPassword;

  CustomEntryField(
      {Key? key,
      required this.hint,
      required this.controller,
      required this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade200,
            hintText: hint,
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.circular(30),
            )
          ),
        ),
      ),
    );
  }
}
