import 'dart:ui';
import 'package:bynry/global%20variables/global_variables.dart';
import 'package:bynry/presantation/home/widgets/gridview/gridview_container.dart';
import 'package:bynry/presantation/home/widgets/dashboard_appbar.dart';
import 'package:bynry/presantation/home/widgets/utility%20details/utility_details_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String dropdownValue = 'Last Month';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: GlobalVariables.primaryColor,
          body: Column(
            children: [
              DashBoardAppbar(),
              Expanded(
                child: Container(
                    // height: ,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Divider(
                            thickness: 5,
                            indent: 150,
                            endIndent: 150,
                            color: Colors.black),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              child: Text('Quick Actions',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: GlobalVariables.primaryColor)),
                            ),
                            SizedBox(height: 15),
                            GridViewContainer(),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Gas | ',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800)),
                                      Text('SA1234567',
                                          style: TextStyle(
                                              color:
                                                  GlobalVariables.primaryColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800)),
                                      // SizedBox(width: double.maxFinite),
                                      Spacer(),
                                      Container(
                                        height: 40,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            border: Border.all(
                                                color: Colors.grey.shade400)),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            value: dropdownValue,
                                            items: <String>[
                                              'Last Month',
                                              'Last 3 Months',
                                              'Last 6 Months',
                                              'Last Year'
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownValue = newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ), // gas container
                                  SizedBox(height: 20),
                                  UtilityDetailsContainer(
                                    title: 'Bills',
                                    subTitle: '20 Jan 2020',
                                    amount: '\$50',
                                  ),
                                  SizedBox(height: 10),
                                  UtilityDetailsContainer(
                                    title: 'Payment',
                                    subTitle: '20 Jan 2020',
                                    amount: '\$450',
                                  ),
                                  SizedBox(height: 10),
                                  UtilityDetailsContainer(
                                    title: 'Meter Reading',
                                    subTitle: '20 Jan 2020',
                                    amount: '50 Units',
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}
