import 'package:flutter/material.dart';
import 'package:logindayandlightmode/login/widget/Sun.dart';
import '../constant.dart';
import 'widget/Land.dart';
import 'widget/Tabs.dart';
import 'widget/Topsection.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    TextTheme textsty = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: x == 1 ? darkBgColors : lightBgColors,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.07,
                  child: Tabs(
                    press: (value) {
                      if (value == 1) {
                        setState(() {
                          x = value;
                        });
                      } else {
                        setState(() {
                          x = value;
                        });
                      }
                    },
                  ),
                ),
                Container(
                  height: size.height * 0.93,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        top: 15,
                        right: 0,
                        left: 0,
                        child: Topsection(textsty: textsty),
                      ),
                      Sun(duration: Duration(milliseconds: 600), isFullSun: x),
                      Land(x: x),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
