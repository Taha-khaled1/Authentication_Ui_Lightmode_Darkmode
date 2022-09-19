import 'package:flutter/material.dart';

import '../../constant.dart';
import 'RoundedTextField.dart';

class Topsection extends StatelessWidget {
  const Topsection({
    Key? key,
    required this.textsty,
  }) : super(key: key);

  final TextTheme textsty;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: textsty.headline3!.copyWith(color: Colors.black),
            ),
            Text(
              'Enter your informations below',
              style: textsty.headline6!
                  .copyWith(color: Colors.black.withOpacity(0.6)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RoundedTextField(
                      hintText: 'Email',
                      initialValue: 'enterhere',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedTextField(
                      hintText: 'username',
                      initialValue: 'enterhere',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
