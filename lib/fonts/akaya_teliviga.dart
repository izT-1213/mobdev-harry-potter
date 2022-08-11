import 'package:flutter/material.dart';
import 'dart:ui' as ui show Shadow;

class AkayaTelivigala extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double size;
  final String fontFamily;
  final List<ui.Shadow>? shadows;

  const AkayaTelivigala({
    required this.color,
    required this.size,
    this.shadows,
    this.fontWeight = FontWeight.w400,
    this.fontFamily = 'AkayaTelivigala',
  })  : super(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
        fontFamily: fontFamily,
      );
}