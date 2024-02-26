import 'package:bynry/global%20variables/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
