import 'package:flutter/material.dart';

class COLORS {
  static const primary = Color(0XFF312651);
  static const secondary = Color(0XFF444262);
  static const tertiary = Color(0XFFFF7754);
  static const success = Color(0XFF34eb83);
  static const failure = Color(0XFFeb2821);
  static const gray = Color(0XFF83829A);
  static const gray2 = Color(0XFFC1C0C8);
  static const white = Color(0XFFF3F4F8);
  static const lightWhite = Color(0XFFFAFAFC);
  static const black = Color(0XFF000000);
}

class FONT {
  static const regular = FontWeight.normal;
  static const medium = FontWeight.w500;
  static const bold = FontWeight.bold;
}

class SIZES {
  static const xSmall = 10.0;
  static const small = 12.0;
  static const medium = 16.0;
  static const large = 20.0;
  static const xLarge = 24.0;
  static const xxLarge = 32.0;
}

class SHADOWS {
  static final small = BoxShadow(
    blurRadius: 2,
    blurStyle: BlurStyle.normal,
    color: COLORS.black.withOpacity(0.25),
    offset: const Offset(0, 2),
    spreadRadius: 3.84
  );
  static final medium = BoxShadow(
    blurRadius: 5,
    blurStyle: BlurStyle.normal,
    color: COLORS.black.withOpacity(0.25),
    offset: const Offset(0, 2),
    spreadRadius: 5.84
  );
}

class TextStyles {
  static const title = TextStyle(fontWeight: FONT.bold, fontSize: SIZES.xLarge, color: COLORS.primary);
  static const subTitle = TextStyle(fontWeight: FONT.regular, fontSize: SIZES.large, color: COLORS.secondary);
}


