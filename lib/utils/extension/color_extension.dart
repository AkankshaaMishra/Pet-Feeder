import 'package:flutter/material.dart';

extension ColorExtension on String{
  /// Create a Color from a hex string of the form #RRGGBB or #AARRGGBB.
  Color fromHex() {
  var hexColor = this.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor, radix: 16));
    
  }
}