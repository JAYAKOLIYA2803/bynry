import 'package:flutter/material.dart';

class CustomNameTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomNameTextfield(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText, hintStyle: TextStyle(fontSize: 18)),
      // early validate field constraints
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter your Name';
        }
        return null;
      },
    );
  }
}
