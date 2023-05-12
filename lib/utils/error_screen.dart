import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:the_solar_spark/utils/thems/styles_manager.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//     print('Kushtia Prayer Times');
//     final myCoordinates =
//     Coordinates(23.9088, 89.1220); // Replace with your own location lat, lng.
//     final params = CalculationMethod.karachi.getParameters();
//     params.madhab = Madhab.hanafi;
//     final prayerTimes = PrayerTimes.today(myCoordinates, params);
//
//     print(
//         "---Today's Prayer Times in Your Local Timezone(${prayerTimes.fajr.timeZoneName})---");
//     print(DateFormat.jm().format(prayerTimes.fajr));
//     print(DateFormat.jm().format(prayerTimes.sunrise));
//     print(DateFormat.jm().format(prayerTimes.dhuhr));
//     print(DateFormat.jm().format(prayerTimes.asr));
//     print(DateFormat.jm().format(prayerTimes.maghrib));
//     print(DateFormat.jm().format(prayerTimes.isha));
//
//     print('---');
//
//     // Custom Timezone Usage. (Most of you won't need this).
    print('UK Prayer Times for date 23 march 2023');
    final UK = Coordinates(52.484944770653584, -1.8627842408110806);
    // final UK = Coordinates(33.603019, 73.111815);

    const ukUtcOffset = Duration(hours: 0);
    final ukDate = DateComponents(2023, 3, 23);
    final ukParams = CalculationMethod.karachi.getParameters();
    ukParams.madhab = Madhab.hanafi;
    final ukPrayerTimes =
        PrayerTimes(UK, ukDate, ukParams, utcOffset: ukUtcOffset);

    // print(ukPrayerTimes.fajr.timeZoneName);
    print("Fajr: ${DateFormat.jm().format(ukPrayerTimes.fajr)}");
    print("sunrise: ${DateFormat.jm().format(ukPrayerTimes.sunrise)}");
    print("dhuhr: ${DateFormat.jm().format(ukPrayerTimes.dhuhr)}");
    print("asr: ${DateFormat.jm().format(ukPrayerTimes.asr)}");
    print("magrib: ${DateFormat.jm().format(ukPrayerTimes.maghrib)}");
    print("isha: ${DateFormat.jm().format(ukPrayerTimes.isha)}");

    print('-------');
    print('UK Prayer Times for date 1 april 2023');
    final ukDate2 = DateComponents(2023, 4, 1);
    final ukPrayerTimes2 =
        PrayerTimes(UK, ukDate2, ukParams, utcOffset: ukUtcOffset);
    print("Fajr: ${DateFormat.jm().format(ukPrayerTimes2.fajr)}");
    print("sunrise: ${DateFormat.jm().format(ukPrayerTimes2.sunrise)}");
    print("dhuhr: ${DateFormat.jm().format(ukPrayerTimes2.dhuhr)}");
    print("asr: ${DateFormat.jm().format(ukPrayerTimes2.asr)}");
    print("magrib: ${DateFormat.jm().format(ukPrayerTimes2.maghrib)}");
    print("isha: ${DateFormat.jm().format(ukPrayerTimes2.isha)}");

    print('-------');
    print('UK Prayer Times for date 20 april 2023');
    final ukDate3 = DateComponents(2023, 4, 20);
    final ukPrayerTimes3 =
        PrayerTimes(UK, ukDate3, ukParams, utcOffset: ukUtcOffset);
    print("Fajr: ${DateFormat.jm().format(ukPrayerTimes3.fajr)}");
    print("sunrise: ${DateFormat.jm().format(ukPrayerTimes3.sunrise)}");
    print("dhuhr: ${DateFormat.jm().format(ukPrayerTimes3.dhuhr)}");
    print("asr: ${DateFormat.jm().format(ukPrayerTimes3.asr)}");
    print("magrib: ${DateFormat.jm().format(ukPrayerTimes3.maghrib)}");
    print("isha: ${DateFormat.jm().format(ukPrayerTimes3.isha)}");
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'ERROR HERE',
          style: getBoldStyle(fontSize: 17),
        ),
      ),
    );
  }
}
