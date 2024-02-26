import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DashBoardAppbar extends StatefulWidget {
  const DashBoardAppbar({super.key});

  @override
  State<DashBoardAppbar> createState() => _DashBoardAppbarState();
}

class _DashBoardAppbarState extends State<DashBoardAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 30),
          CircleAvatar(
            child: Image.asset('assets/images/profile.png'),
            radius: 35,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text(
                'Hello',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                'Thomas',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Iconsax.notification, color: Colors.black, size: 25)),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
