import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusColorPicker {
  static late Color color;
  static late int index;
  Color get getColor => color;
  StatusColorPicker() {
    index = 0;
    color = Kolors.statusBgColorsList[index];
  }
  void nextColor() {
    index = (index + 1) % Kolors.statusBgColorsList.length;
    color = Kolors.statusBgColorsList[index];
  }
}


