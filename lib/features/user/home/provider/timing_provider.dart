import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:the_solar_spark/models/prayer_timing_model.dart';


final prayerTimesProvider = FutureProvider.autoDispose<PrayerTiming>((ref) async {
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  final DateFormat timeFormat = DateFormat('HH:mm:ss');
  final String date = dateFormat.format(DateTime.now());
  final String time = timeFormat.format(DateTime.now());

  final Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);


  double latitude = position.latitude;
  double longitude = position.longitude;


  final url = Uri.parse(
      'http://api.aladhan.com/v1/timings/$date $time?latitude=$latitude&longitude=$longitude&method=1&iso8601=true&tune=0,0,-3,0,+58,+2,+2,0,0');

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    String fajr = DateFormat.jm().format(DateTime.parse(
        data['data']['timings']['Fajr'].toString().split('+').first));
    String sunrise = DateFormat.jm().format(DateTime.parse(
        data['data']['timings']['Sunrise'].toString().split('+').first));
    String dhuhr = DateFormat.jm().format(DateTime.parse(
        data['data']['timings']['Dhuhr'].toString().split('+').first));
    String asr = DateFormat.jm().format(DateTime.parse(
        data['data']['timings']['Asr'].toString().split('+').first));
    String maghrib = DateFormat.jm().format(DateTime.parse(
        data['data']['timings']['Maghrib'].toString().split('+').first));
    String isha = DateFormat.jm().format(DateTime.parse(
        data['data']['timings']['Isha'].toString().split('+').first));

    PrayerTiming prayerTiming = PrayerTiming(
        fajr: fajr,
        sunrise: sunrise,
        zuhr: dhuhr,
        asr: asr,
        maghrib: maghrib,
        isha: isha);
    return prayerTiming;
  } else {
    throw Exception('Failed to load data');
  }
});
