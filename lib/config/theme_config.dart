// ignore_for_file: finalant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bustleup/config/color_constants.dart';

final LargeText = 30.w;
final MediumText = 23.w;
final SuccesText = 22.w;
final BodyText = 15.w;
final SmallText = 12.w;

final ScreenPadding = EdgeInsets.only(right: 20.w, left: 20.w, top: 5.h, bottom: 20.h);
final HomeScreenPadding = EdgeInsets.only(right: 20.w, left: 20.w, top: 10.h);

const String Family = 'Poppins';

final HeadingLarge = TextStyle(
    fontFamily: Family,
    fontWeight: FontWeight.w700,
    fontSize: LargeText,
    color: kTextColor);
final HeadingMedium = TextStyle(
    fontFamily: Family,
    fontWeight: FontWeight.w700,
    fontSize: MediumText,
    color: kTextColorDark);
final HeadingSmall = TextStyle(
    fontFamily: Family,
    fontWeight: FontWeight.w700,
    fontSize: BodyText,
    color: kTextColorDark);
final BodyMedium = TextStyle(
    fontFamily: Family,
    fontWeight: FontWeight.w400,
    fontSize: BodyText,
    color: kTextColorDark);
final BodyLarge = TextStyle(
    fontFamily: Family,
    fontWeight: FontWeight.w500,
    fontSize: BodyText,
    color: kTextColorDark);
final BodySmall = TextStyle(
    fontFamily: Family,
    fontWeight: FontWeight.w400,
    fontSize: SmallText,
    color: kTextColorDark);
