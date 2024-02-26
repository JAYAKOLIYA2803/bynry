import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomMobileNoTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomMobileNoTextField(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 18),
      ),
      // early validate field constraints
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter Mobile No.';
        }
        if (value.length < 10 || value.length > 10) {
          return 'Enter Valid Mobile No.';
        }
        return null;
      },
    );
  }
}
