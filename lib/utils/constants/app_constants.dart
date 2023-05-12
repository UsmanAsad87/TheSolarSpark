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

DateTime constantTime = DateTime.parse('2023-03-19 00:00:00');
String postData =
    "Ustaz Ul Ulama Jami ul Maqool Wal Manqool, Shaykh ul Hadeeth Hazrat Allama Mufti Nazeer Khan Bandyalvi hh (Dars e Nizami Head mudarris at Kanz Ul Huda head quarters Birmingham) also present at the Lailatul Bara’ah event last night.\n\nBrothers and sisters were left mesmerised after listening to the powerful messages by Shaykh Saqib hh and the KUH ulama & speakers. Many also benefited from the collective and individual Ibadah based on Shaykh Saqib’s hh 6 points Action plan booklet for Mid Sha’ban and preparation before Ramadan.\n\nHundreds of brothers and sisters were in tears and repented during Shaykh Saqib’s hh heart touching Dua for the Ummah. Words cannot do justice to the spiritual atmosphere last night at Kanz ul Huda.\nMay Allah taala accept the Ibaadaat of all and bless us all with steadfastness. Ameen";
String data =
    "What the benefits of fasting? In the month of Ramadān Muslims across the globe willingly abstain from food, drink and marital relations during the prescribed hours due to the obligation upon them. They further spend a portion of the night standing in worship of Almighty Allāh listening to the melodious recitation of the Holy Qur’ān. Non-Muslims are often fascinated by the discipline shown by Muslims in the month of Ramadān but whilst we may fulfil its core tenants, do we know why this month is of utmost importance to us? If we can understand this, it will help us to prepare physically, spiritually and mentally for this beautiful month. Allah Almighty states in the holy Qur'an: “The month of Ramadān in which was sent down the Qur’ān - the guidance for mankind, the direction and the clear criteria (to judge between right and wrong); so whoever among you witnesses this month, must fast for the (whole) month; and whoever is sick or on a journey, may fast the same number in other days; Allah desires ease for you and does not desire hardship for you - so that you complete the count (of fasts), and glorify Allah’s greatness for having guided you, and so that you may be grateful.” [Baqarah 2:185]";

PrayerTime constPrayerTime = PrayerTime(
    date: DateTime.parse('2023-03-22 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.10 AM',
      sunrise: '6:04 AM',
      zuhr: '12:15 PM',
      asr: '4:25 PM',
      maghrib: '6:26 PM',
      isha: '8:21 PM',
    ));

List<PrayerTime> prayerTimes = [
  PrayerTime(
      date: DateTime.parse('2023-03-22 00:00:00'),
      timing: PrayerTiming(
        fajr: '4.10 AM',
        sunrise: '6:04 AM',
        zuhr: '12:15 PM',
        asr: '4:25 PM',
        maghrib: '6:26 PM',
        isha: '8:21 PM',
      )),
  PrayerTime(
      date: DateTime.parse('2023-03-23 00:00:00'),
      timing: PrayerTiming(
        fajr: '4.07 AM',
        sunrise: '6:02 AM',
        zuhr: '12:14 PM',
        asr: '4:26 PM',
        maghrib: '6:28 PM',
        isha: '8:23 PM',
      )),
  PrayerTime(
    date: DateTime.parse('2023-03-24 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.04 AM',
      sunrise: '6:00 AM',
      zuhr: '12:14 PM',
      asr: '4:27 PM',
      maghrib: '6:29 PM',
      isha: '8:25 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-03-25 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.01 AM',
      sunrise: '5:57 AM',
      zuhr: '12:14 PM',
      asr: '4:29 PM',
      maghrib: '6:31 PM',
      isha: '8:27 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-03-26 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.58 AM',
      sunrise: '6:55 AM',
      zuhr: '1:13 PM',
      asr: '5:30 PM',
      maghrib: '7:33 PM',
      isha: '9:30 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-03-27 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.56 AM',
      sunrise: '6:53 AM',
      zuhr: '1:13PM',
      asr: '5:32 PM',
      maghrib: '7:35 PM',
      isha: '9:32 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-03-28 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.53 AM',
      sunrise: '6:50 AM',
      zuhr: '1:13 PM',
      asr: '5:33 PM',
      maghrib: '7:36 PM',
      isha: '9:34 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-03-29 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.50 AM',
      sunrise: '6:48 AM',
      zuhr: '1:12 PM',
      asr: '5:34 PM',
      maghrib: '7:38 PM',
      isha: '9:36 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-03-30 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.47 AM',
      sunrise: '6:46 AM',
      zuhr: '1:12 PM',
      asr: '5:35 PM',
      maghrib: '7:40 PM',
      isha: '9:39 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-03-31 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.44 AM',
      sunrise: '6:43 AM',
      zuhr: '1:12 PM',
      asr: '5:38 PM',
      maghrib: '7:42 PM',
      isha: '9:41 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-01 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.41 AM',
      sunrise: '6:41 AM',
      zuhr: '1:12 PM',
      asr: '5:38 PM',
      maghrib: '7:43 PM',
      isha: '9:43 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-02 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.35 AM',
      sunrise: '6:36 AM',
      zuhr: '1:11 PM',
      asr: '5:39 PM',
      maghrib: '7:45 PM',
      isha: '9:46 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-03 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.35 AM',
      sunrise: '6:36 AM',
      zuhr: '1:11 PM',
      asr: '5:41 PM',
      maghrib: '7:47 PM',
      isha: '9:48 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-04 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.32 AM',
      sunrise: '6:34 AM',
      zuhr: '1:11 PM',
      asr: '5:42 PM',
      maghrib: '7:49 PM',
      isha: '9:50 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-05 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.29 AM',
      sunrise: '6:31 AM',
      zuhr: '1:10 PM',
      asr: '5:43 PM',
      maghrib: '7:50 PM',
      isha: '9:53 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-06 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.26 AM',
      sunrise: '6:29 AM',
      zuhr: '1:10 PM',
      asr: '5:44 PM',
      maghrib: '7:52 PM',
      isha: '9:55 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-07 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.23AM',
      sunrise: '6:29 AM',
      zuhr: '1:10 PM',
      asr: '5:46 PM',
      maghrib: '7:54 PM',
      isha: '9:58 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-08 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.20 AM',
      sunrise: '6:25 AM',
      zuhr: '1:10 PM',
      asr: '5:47 PM',
      maghrib: '7:56 PM',
      isha: '10:00 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-09 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.17 AM',
      sunrise: '6:22 AM',
      zuhr: '1:09 PM',
      asr: '5:48 PM',
      maghrib: '7:57 PM',
      isha: '10:03 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-10 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.14 AM',
      sunrise: '6:20 AM',
      zuhr: '1:09 PM',
      asr: '5:49 PM',
      maghrib: '7:59 PM',
      isha: '10:06 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-11 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.11 AM',
      sunrise: '6:18 AM',
      zuhr: '1:09 PM',
      asr: '5:51 PM',
      maghrib: '8:01 PM',
      isha: '10:08 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-12 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.08 AM',
      sunrise: '6:15 AM',
      zuhr: '1:08 PM',
      asr: '5:52 PM',
      maghrib: '8:03 PM',
      isha: '10:11 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-13 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.04 AM',
      sunrise: '6:13 AM',
      zuhr: '1:08 PM',
      asr: '5:53 PM',
      maghrib: '8:04 PM',
      isha: '10:14 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-14 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.01 AM',
      sunrise: '6:11 AM',
      zuhr: '1:08 PM',
      asr: '5:54 PM',
      maghrib: '8:06 PM',
      isha: '10:16 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-15 00:00:00'),
    timing: PrayerTiming(
      fajr: '4.08 AM',
      sunrise: '6:09 AM',
      zuhr: '1:08 PM',
      asr: '5:55 PM',
      maghrib: '8:08 PM',
      isha: '10:19 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-16 00:00:00'),
    timing: PrayerTiming(
      fajr: '3.58 AM',
      sunrise: '6:06 AM',
      zuhr: '1:07 PM',
      asr: '5:57 PM',
      maghrib: '8:09 PM',
      isha: '10:22 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-17 00:00:00'),
    timing: PrayerTiming(
      fajr: '3.58 AM',
      sunrise: '6:06 AM',
      zuhr: '1:07 PM',
      asr: '5:57 PM',
      maghrib: '8:09 PM',
      isha: '10:22 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-18 00:00:00'),
    timing: PrayerTiming(
      fajr: '3.55 AM',
      sunrise: '6:04 AM',
      zuhr: '1:07 PM',
      asr: '5:58 PM',
      maghrib: '8:11 PM',
      isha: '10:25 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-19 00:00:00'),
    timing: PrayerTiming(
      fajr: '3.48 AM',
      sunrise: '6:02 AM',
      zuhr: '1:07 PM',
      asr: '5:59 PM',
      maghrib: '8:13 PM',
      isha: '10:28 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-20 00:00:00'),
    timing: PrayerTiming(
      fajr: '3.45 AM',
      sunrise: '6:00 AM',
      zuhr: '1:07 PM',
      asr: '6:00 PM',
      maghrib: '8:15 PM',
      isha: '10:31 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-21 00:00:00'),
    timing: PrayerTiming(
      fajr: '3.41 AM',
      sunrise: '5:58 AM',
      zuhr: '1:07 PM',
      asr: '6:01 PM',
      maghrib: '8:18 PM',
      isha: '10:34 PM',
    ),
  ),
  PrayerTime(
    date: DateTime.parse('2023-04-22 00:00:00'),
    timing: PrayerTiming(
      fajr: '3.38 AM',
      sunrise: '5:56 AM',
      zuhr: '1:06 PM',
      asr: '6:02 PM',
      maghrib: '8:18 PM',
      isha: '10:37 PM',
    ),
  ),
];
List<String> feedImages = [
  "https://drive.google.com/uc?export=view&id=1BDaptBkdZ0z9j1x23oWnUDOU83G66EtI",
  "https://drive.google.com/uc?export=view&id=1MLxZTu5Xkpqot4PdjtiM4BMnhhvqCnrE",
  "https://drive.google.com/uc?export=view&id=1dMQmX5YLXuW6xYRMahpTKZFRI5oKqXwA",
  "https://drive.google.com/uc?export=view&id=1_lWrDfs4Tpj49YWzj4Ak97o7R704oOME",
  "https://drive.google.com/uc?export=view&id=1Q99kW9kSo1_0wRKwTof8aE3IrX6qCAOW",
];
List<String> listImages = [
  'https://images.unsplash.com/photo-1572204292164-b35ba943fca7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGl4ZWx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1590254553792-7e91903c5357?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBpeGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1548586196-aa5803b77379?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpeGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572204304559-b5f5380482c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA4fHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=6',
  'https://images.unsplash.com/photo-1554516829-a3fce6ddbc6e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQzfHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1563642421748-5047b6585a4a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTY2fHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1593439147804-c6c7656530ae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzUzfHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572204292164-b35ba943fca7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGl4ZWx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1590254553792-7e91903c5357?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBpeGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1548586196-aa5803b77379?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBpeGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572204304559-b5f5380482c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA4fHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=6',
  'https://images.unsplash.com/photo-1554516829-a3fce6ddbc6e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQzfHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1563642421748-5047b6585a4a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTY2fHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1593439147804-c6c7656530ae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzUzfHxwaXhlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
];

List<String> listVideos = [
  'https://youtu.be/tzIb3aPfLTQ',
  'https://www.youtube.com/shorts/XdnO8iiOfOM',
  'https://www.youtube.com/shorts/JxvCYm17eOU',
  'https://www.youtube.com/shorts/hS1LNpuhslI',
  'https://www.youtube.com/shorts/Qr1NSC86R0E',
];
