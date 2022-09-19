import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Sun extends StatelessWidget {
  Sun({
    required this.duration,
    required this.isFullSun,
  });

  Duration duration;
  int isFullSun;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: duration,
      curve: Curves.easeInOut,
      left: 30,
      bottom: isFullSun == 1 ? -120 : -45,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: SvgPicture.asset("assets/icons/Sun.svg")),
    );
  }
}
