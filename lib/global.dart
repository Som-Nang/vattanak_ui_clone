import 'package:flutter/material.dart';

const appName = "Vattanac Bank";
late Size mq;

const kPrimary = Color(0xff0E44C2);
const kRed = Color(0xffF93827);
const kYellow = Color(0xffF9CB43);
const kGreen = Color(0xff89EF7B);
const kDeepBlue = Color(0xff000c19);
const kGold = Color(0xffFFC278);
const kPurple = Color(0xff8F98FF);
const kDark = Color(0xff021526);

const kBlueToPurpleLinearGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment(0.1, 1),
  colors: <Color>[
    Color(0xff2567E8),
    Color(0xff8F98FF),
  ], // Gradient from https://learnui.design/tools/gradient-generator.html
  tileMode: TileMode.mirror,
);
const kBlueToLightBlueLinearGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment(0.01, 4),
  colors: <Color>[
    Color(0xff0D44C3),
    Color(0xffAAD9FF),
  ], // Gradient from https://learnui.design/tools/gradient-generator.html
  tileMode: TileMode.mirror,
);

const kLightBlueTOBlueLinearGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment(0.1, 4),
  colors: <Color>[
    Color(0xff0D44C3),
    Color(0xffAAD9FF),
  ], // Gradient from https://learnui.design/tools/gradient-generator.html
  tileMode: TileMode.mirror,
);

const kLightGreenLinearGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment(0.2, 1),
  colors: <Color>[
    Color(0xff89EF7B),
    Color(0xff8cec96),
  ], // Gradient from https://learnui.design/tools/gradient-generator.html
  tileMode: TileMode.mirror,
);
