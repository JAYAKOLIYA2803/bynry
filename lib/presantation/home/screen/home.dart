import 'package:bynry/global%20variables/global_variables.dart';
import 'package:bynry/presantation/home/screen/dashboard_page.dart';
import 'package:bynry/presantation/home/screen/history_page.dart';
import 'package:bynry/presantation/home/screen/support_page.dart';
import 'package:bynry/presantation/home/screen/usage_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  List<Widget> pages = [
    DashboardPage(),
    UsagePage(),
    HistoryPage(),
    SupportScreen(),
  ];
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.primaryColor,
        body: pages[_page],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _page,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: GlobalVariables.secondaryColor,
            unselectedItemColor: Colors.grey,
            iconSize: 35,
            selectedFontSize: 15,
            unselectedFontSize: 15,
            onTap: updatePage,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.space_dashboard_rounded),
                  label: 'Dashboard'),
              BottomNavigationBarItem(
                icon: Icon(Icons.data_usage),
                label: 'Usage',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: 'History'),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.support), label: 'Support')
            ]));
  }
}
