import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridViewCommonElement extends StatelessWidget {
  final String imagePath;
  final String label;
  const GridViewCommonElement({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width / 4,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  imagePath,
                  // fit: BoxFit.cover,
                )),
            Text(label)
          ],
        ),
      ),
    );
    // Container(
    //   child: Column(
    //     children: [
    //       Container(
    //           width: MediaQuery.of(context).size.width / 4,
    //           child: Image.asset(imagePath)),
    //       Text(label)
    //     ],
    //   ),
    // );
  }
}
