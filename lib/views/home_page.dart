// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:calculator/controllers/calculator_controller.dart';
import 'package:calculator/widgets/body_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/switchThemeButton.dart';
import '../widgets/theme.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final CalculatorController _controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SwitchThemeButton(),
              ],
            ),
            Container(
              alignment: Alignment.center,
              child: WavyAnimatedTextKit(
                stopPauseOnTap: false,
                text: ["NOTHING"],
                //totalRepeatCount: 3,
                //isRepeatingAnimation: false,
                textStyle: GoogleFonts.ralewayDots(fontSize: 40),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(() {
                    final userInput = _controller.input.value;
                    final result = _controller.result.value;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(userInput, style: kTextStyle(30)),
                        Text(result, style: kTextStyle(50)),
                      ],
                    );
                  }),
                ],
              ),
            ),
            BodyContainer(),
          ],
        ),
      ),
    );
  }
}
