import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bustleup/config/color_constants.dart';
import 'package:bustleup/config/theme_config.dart';

class ElevatedButtonUtil extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ElevatedButtonUtil({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: kButtonColor,
          minimumSize: Size(340.w, 58.h),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(99)),
          textStyle: TextStyle(
            fontSize: BodyText,
          )),
      child: Text(text),
    );
  }
}

class TextButtonUtil extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const TextButtonUtil({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            foregroundColor: kTextColorLight,
            textStyle:  TextStyle(fontSize: BodyText)),
        child: Text(text));
  }
}

class SmallTextButtonUtil extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const SmallTextButtonUtil({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            foregroundColor: kTextColorLight,
            textStyle: TextStyle(fontSize: SmallText)),
        child: Text(text));
  }
}
