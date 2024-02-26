import 'package:bynry/global%20variables/global_variables.dart';
import 'package:bynry/presantation/home/widgets/gridview/common_gridview_element.dart';
import 'package:flutter/material.dart';

class GridViewContainer extends StatelessWidget {
  const GridViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4.6,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(color: Colors.white),
          child: GridView.count(
            crossAxisCount: 4,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Badge(
                largeSize: 22,
                label: Text(
                  '1',
                  style: TextStyle(fontSize: 18),
                ),
                backgroundColor: GlobalVariables.primaryColor,
                offset: Offset(-10, -15),
                child: GridViewCommonElement(
                  imagePath: GlobalVariables.iconData,
                  label: 'Bills',
                ),
              ),
              GridViewCommonElement(
                imagePath: GlobalVariables.iconData4,
                label: 'Quick Pay',
              ),
              Badge(
                largeSize: 22,
                label: Text(
                  '1',
                  style: TextStyle(fontSize: 18),
                ),
                backgroundColor: GlobalVariables.primaryColor,
                offset: Offset(-20, -15),
                child: GridViewCommonElement(
                  imagePath: GlobalVariables.iconData6,
                  label: 'Updates',
                ),
              ),
              GridViewCommonElement(
                imagePath: GlobalVariables.iconData3,
                label: 'Disconnect',
              ),
              GridViewCommonElement(
                imagePath: GlobalVariables.iconData8,
                label: 'Complaints',
              ),
              GridViewCommonElement(
                imagePath: GlobalVariables.iconData5,
                label: 'Transfer',
              ),
              Badge(
                largeSize: 22,
                label: Text(
                  '2',
                  style: TextStyle(fontSize: 18),
                ),
                backgroundColor: GlobalVariables.primaryColor,
                offset: Offset(-20, -13),
                child: GridViewCommonElement(
                  imagePath: GlobalVariables.iconData2,
                  label: 'Services',
                ),
              ),
              GridViewCommonElement(
                imagePath: GlobalVariables.iconData3,
                label: 'Outage',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
