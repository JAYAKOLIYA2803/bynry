import 'package:bynry/global%20variables/global_variables.dart';
import 'package:flutter/material.dart';

class GlobalBottomNavigationBar extends StatefulWidget {
  final VoidCallback onTap;
  const GlobalBottomNavigationBar({super.key, required this.onTap});

  @override
  State<GlobalBottomNavigationBar> createState() =>
      _GlobalBottomNavigationBarState();
}

class _GlobalBottomNavigationBarState extends State<GlobalBottomNavigationBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: GlobalVariables.secondaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.data_usage), label: 'usage'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.support), label: 'Support')
        ]);
  }
}
