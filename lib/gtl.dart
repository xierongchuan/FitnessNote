/// GTL - Giga Tool Library
/// For - Dart Flutter
/// Version - 0.1+1
/// Author - Tulenov Temur Pulatovich

import 'package:flutter/material.dart';

// Variables

const Color mBlue = Color(0xFF1389FD);
const Color mBlueAlpha = Color(0x881389FD);
const Color mRed = Color(0xFFA80000);
const Color mRedAlpha = Color(0x88A80000);
const Color mGreen = Color(0xFF359D35);
const Color mGreenAlpha = Color(0x88359D35);
const Color mGrey = Color(0xFF3D3D3D);
const Color mGreyAlpha = Color(0x883D3D3D);
const Color mDarkGrey = Color(0xFF2E2E2E);
const Color mDarkGreyAlpha = Color(0x882E2E2E);
const Color mLightGrey = Color(0xFF828282);
const Color mLightGreyAlpha = Color(0x88828282);
const Color mOrange = Color(0xFFEB4700);
const Color mLightOrange = Color(0xFFEB6B00);
const Color mYellow = Color(0xFFDDCC00);
const Color mLightYellow = Color(0xFFEBE15D);
const Color mWhite = Color(0xFFFFFFFF);
const Color mWhiteAlpha = Color(0x88FFFFFF);
const Color mTransparent = Color(0x00FF00FF);

// Functions

OutlinedButton mButton(
    {
      required Widget child,
      required void onPressed(),
      Color foregroundColor = mGreen,
      Color overlayColor = mLightGreyAlpha,
    }
    ) {
  return OutlinedButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(foregroundColor),
      overlayColor: MaterialStateProperty.all<Color>(overlayColor),
    ),
    onPressed: onPressed,
    child: child
  );
}

Widget mTextField(
    {
      required Icon icon,
      required String hint,
      required TextEditingController controller,
      bool obscure = false
    }
    ) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20),
    child: TextField(
      controller: controller,
      obscureText: obscure,
      style: TextStyle(
        color: mWhite,
      ),
      decoration: InputDecoration(
        labelText: hint,
        labelStyle: TextStyle(color: mWhite),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.5)),
          borderSide: BorderSide(color: mBlue, width: 3),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: mBlue, width: 3),
        ),
        // hintText: hint,
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 10, right: 10,),
          child: icon,
        ),
      )
    ),
  );
}

Icon mIcon(
    IconData? icon,
    {
      Color color = mWhite,
      double size = 24.0
    }
    ) {
  return Icon(
    icon ?? Icons.account_box,
    color: color,
    size: size,
  );
}

Widget mText100(
    String? text,
    {
      double size = 100.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight
    ),
  );
}

Widget mText90(
    String? text,
    {
      double size = 90.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget mText80(
    String? text,
    {
      double size = 80.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget mText70(
    String? text,
    {
      double size = 70.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget mText60(
    String? text,
    {
      double size = 60.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget mText50(
    String? text,
    {
      double size = 50.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget mText40(
    String? text,
    {
      double size = 40.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget mText30(
    String? text,
    {
      double size = 30.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget mText20(
    String? text,
    {
      double size = 20.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget mText10(
    String? text,
    {
      double size = 10.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget mText15(
    String? text,
    {
      double size = 15.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget mText5(
    String? text,
    {
      double size = 5.0,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      fontFamily: family,
      fontSize: size,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}
