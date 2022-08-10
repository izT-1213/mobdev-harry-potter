import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AkayaTelivigala extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double size;
  final String fontFamily;

  const AkayaTelivigala({
    required this.color,
    required this.size,
    this.fontWeight = FontWeight.w400,
    this.fontFamily = 'AkayaTelivigala',
  })  : super(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
        fontFamily: fontFamily,
      );
}