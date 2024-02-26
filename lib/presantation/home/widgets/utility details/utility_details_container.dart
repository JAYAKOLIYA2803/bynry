import 'package:bynry/global%20variables/global_variables.dart';
import 'package:bynry/presantation/home/widgets/utility%20details/gas_chart.dart';
import 'package:flutter/material.dart';

class UtilityDetailsContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final String amount;

  UtilityDetailsContainer(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.amount});

  String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 30),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 20, offset: Offset(5, 5), color: Colors.grey.shade400)
        ]),
        child: Row(children: [
          GasChartWidget(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                subTitle,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          Spacer(),
          Text(
            '$amount',
            style:
                TextStyle(color: GlobalVariables.secondaryColor, fontSize: 20),
          )
        ]));
  }
}
