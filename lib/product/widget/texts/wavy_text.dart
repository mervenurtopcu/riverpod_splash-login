import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../constants/color_constants.dart';

class WavyText extends StatelessWidget {
  const WavyText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        WavyAnimatedText(title,
            textStyle: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: ColorConstants.whiteColor),
            speed: const Duration(milliseconds: 200)),
      ],
      isRepeatingAnimation: true,
      repeatForever: true,
      onTap: () {
        print("Tap Event");
      },
    );
  }
}
