import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class CustomEmailTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomEmailTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText, hintStyle: TextStyle(fontSize: 18)
          // border:
          //     OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
          ),
      // early validate field constraints
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter your Email';
        } else if (RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(value)) {
          // Fluttertoast.showToast(msg: 'Login Sucesfully');
          return null;
        }
        return 'Enter valid Email';
      },
    );
  }
}
