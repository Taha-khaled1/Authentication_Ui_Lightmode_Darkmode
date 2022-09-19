import 'package:flutter/material.dart';

class Land extends StatelessWidget {
  Land({required this.x});
  int x;
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(seconds: 1),
      bottom: -60,
      left: -70,
      right: -70,
      child: x == 1
          ? Image.asset(
              "assets/images/land_tree_dark.png",
              height: 400,
              width: 1200,
              fit: BoxFit.fill,
            )
          : Image.asset(
              "assets/images/land_tree_light.png",
              height: 400,
              width: 1200,
              fit: BoxFit.fill,
            ),
    );
  }
}
