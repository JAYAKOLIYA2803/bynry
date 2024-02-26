import 'package:bynry/global%20variables/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
