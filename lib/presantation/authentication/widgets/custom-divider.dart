import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: Colors.grey.shade300,
                thickness: 2,
                indent: 30,
                endIndent: 10)),
        Text('OR Login With'),
        Flexible(
            child: Divider(
                color: Colors.grey.shade300,
                thickness: 2,
                indent: 10,
                endIndent: 30))
      ],
    );
  }
}
