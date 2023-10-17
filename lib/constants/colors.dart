import 'package:flutter/material.dart';

enum MyColors { white, black, grey, red, purple, navyBlue }

extension MyColorsExtension on MyColors {
  Color toColor() {
    switch (this) {
      case MyColors.white:
        return const Color(0xFFF5F5F5);
      case MyColors.black:
        return const Color(0xFF000000);
      case MyColors.grey:
        return const Color(0xFFC6C6C6);
      case MyColors.red:
        return const Color(0xFFFB344F);
      case MyColors.purple:
        return const Color(0xFF351A96);
      case MyColors.navyBlue:
        return const Color(0xFF160062);
    }
  }
}
