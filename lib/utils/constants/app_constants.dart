import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_solar_spark/models/prayer_timing_model.dart';

class AppConstants {
  static const double screenWidget = 385;
  static const double screenHeight = 812;
  static double padding = 20.h;
  static const appName='The Spark App';
  static const appTagLine='Effortlessly monitor your solar panel readings';

  static IconData arrow_back = Icons.arrow_back_rounded;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
const String baseUrl = "https://api.openweathermap.org/data/2.5";

