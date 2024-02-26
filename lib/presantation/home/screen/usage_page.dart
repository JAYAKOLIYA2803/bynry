import 'package:bynry/global%20variables/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsagePage extends StatefulWidget {
  const UsagePage({super.key});

  @override
  State<UsagePage> createState() => _UsagePageState();
}

class _UsagePageState extends State<UsagePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: GlobalVariables.primaryColor,
        body: Center(
          child: Text(
            'Page Under Development Phase',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ));
  }
}
