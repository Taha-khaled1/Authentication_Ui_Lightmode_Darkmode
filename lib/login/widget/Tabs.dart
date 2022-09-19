import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  Tabs({
    required this.press,
  });

  final ValueChanged<int> press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 80%
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DefaultTabController(
        length: 2,
        child: TabBar(
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          indicatorColor: Colors.white,
          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          onTap: press,
          tabs: [
            Tab(text: "Morning Login"),
            Tab(
              text: "Night Login",
            )
          ],
        ),
      ),
    );
  }
}
