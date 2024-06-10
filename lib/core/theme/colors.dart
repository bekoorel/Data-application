import 'package:flutter/material.dart';

class ColorsForAllApp {
  static Color tealGreen = const Color(0xFF017373);
  static Color darkCyan = const Color(0xFF025273);
  static Color lightAqua = const Color(0xFF73EAE4);
  static Color lightCoral = const Color(0xFFD9705A);
  static Color paleGold = const Color(0xFFD9BA83);
  static Color white = const Color(0xFFFFFFFF);

  static LinearGradient lightAquaGradient = LinearGradient(
    colors: <Color>[lightAqua, lightAqua.withOpacity(1.0)],
    begin: Alignment.topLeft, // بداية التدرج
    end: Alignment.bottomRight, // نهاية التدرج
  );

  static LinearGradient paleGoldGradient = LinearGradient(
    colors: <Color>[paleGold, paleGold.withOpacity(1.0)],
    begin: Alignment.topLeft, // بداية التدرج
    end: Alignment.bottomRight, // نهاية التدرج
  );

  static LinearGradient lightCoralGradient = LinearGradient(
    colors: <Color>[lightCoral, paleGold],
    begin: Alignment.topLeft, // بداية التدرج
    end: Alignment.bottomRight, // نهاية التدرج
  );

  static LinearGradient backGroundGradient = LinearGradient(
    colors: <Color>[
      tealGreen,
      lightCoral,
      tealGreen,
    ],
    begin: Alignment.topRight, // بداية التدرج
    end: Alignment.bottomLeft, // نهاية التدرج
  );

  static TextStyle font36blod =
      TextStyle(color: white, fontSize: 36, fontWeight: FontWeight.bold);

  static TextStyle font36normal =
      TextStyle(color: white, fontSize: 36, fontWeight: FontWeight.normal);
}
