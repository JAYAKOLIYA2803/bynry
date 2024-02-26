import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final VoidCallback onTap;
  final Icon icon;
  final bool passToggle;
  const CustomPasswordTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.onTap,
      required this.icon,
      required this.passToggle});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: passToggle,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 18),
          suffixIcon: InkWell(
            onTap: onTap,
            child: icon,
          )
          // border:
          //     OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
          ),
      // early validate field constraints
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Password';
        }
        return null;
      },
    );
  }
}
