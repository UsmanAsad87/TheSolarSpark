import 'package:flutter/material.dart';
import 'package:the_solar_spark/commons/common_libs.dart';

class PrayerTimeTable extends StatelessWidget {
  final List<Map<String, dynamic>> prayerTimeData;

  PrayerTimeTable({required this.prayerTimeData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DataTable(
        dataRowHeight: 40,
        columnSpacing: 10,
        columns: [
          DataColumn(label: Text('Date',style: getMediumStyle(fontSize: 8.sp),)),
          DataColumn(label: Text('Fajr',style: getMediumStyle(fontSize: 8.sp),)),
          DataColumn(label: Text('Sunrise',style: getMediumStyle(fontSize: 8.sp),)),
          DataColumn(label: Text('Dhuhr',style: getMediumStyle(fontSize: 8.sp),)),
          DataColumn(label: Text('Asr',style: getMediumStyle(fontSize: 8.sp),)),
          DataColumn(label: Text('Maghrib',style: getMediumStyle(fontSize: 8.sp),)),
          DataColumn(label: Text('Isha',style: getMediumStyle(fontSize: 8.sp),)),
        ],
        rows: prayerTimeData.map((data) {
          return DataRow(cells: [
            DataCell(Text(data['date']['readable'],style: getRegularStyle(fontSize: 8.sp),),),
            DataCell(Text(data['timings']['Fajr'],style: getRegularStyle(fontSize: 8.sp),)),
            DataCell(Text(data['timings']['Sunrise'],style: getRegularStyle(fontSize: 8.sp),)),
            DataCell(Text(data['timings']['Dhuhr'],style: getRegularStyle(fontSize: 8.sp),)),
            DataCell(Text(data['timings']['Asr'],style: getRegularStyle(fontSize: 8.sp),)),
            DataCell(Text(data['timings']['Maghrib'],style: getRegularStyle(fontSize: 8.sp),)),
            DataCell(Text(data['timings']['Isha'],style: getRegularStyle(fontSize: 8.sp),)),
          ]);
        }).toList(),
      ),
    );
  }
}


final prayerTimeData =[
      {
        "timings": {
          "Fajr": "04:41 (BST)",
          "Sunrise": "06:40 (BST)",
          "Dhuhr": "13:11 (BST)",
          "Asr": "17:41 (BST)",
          "Sunset": "19:43 (BST)",
          "Maghrib": "19:43 (BST)",
          "Isha": "21:43 (BST)",
          "Imsak": "04:31 (BST)",
          "Midnight": "01:12 (BST)",
          "Firstthird": "23:22 (BST)",
          "Lastthird": "03:02 (BST)"
        },
        "date": {
          "readable": "01 Apr 2023",
          "timestamp": "1680336061",
          "gregorian": {
            "date": "01-04-2023",
            "format": "DD-MM-YYYY",
            "day": "01",
            "weekday": {
              "en": "Saturday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "10-09-1444",
            "format": "DD-MM-YYYY",
            "day": "10",
            "weekday": {
              "en": "Al Sabt",
              "ar": "السبت"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:38 (BST)",
          "Sunrise": "06:37 (BST)",
          "Dhuhr": "13:11 (BST)",
          "Asr": "17:42 (BST)",
          "Sunset": "19:45 (BST)",
          "Maghrib": "19:45 (BST)",
          "Isha": "21:45 (BST)",
          "Imsak": "04:28 (BST)",
          "Midnight": "01:12 (BST)",
          "Firstthird": "23:22 (BST)",
          "Lastthird": "03:01 (BST)"
        },
        "date": {
          "readable": "02 Apr 2023",
          "timestamp": "1680422461",
          "gregorian": {
            "date": "02-04-2023",
            "format": "DD-MM-YYYY",
            "day": "02",
            "weekday": {
              "en": "Sunday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "11-09-1444",
            "format": "DD-MM-YYYY",
            "day": "11",
            "weekday": {
              "en": "Al Ahad",
              "ar": "الاحد"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:35 (BST)",
          "Sunrise": "06:35 (BST)",
          "Dhuhr": "13:11 (BST)",
          "Asr": "17:43 (BST)",
          "Sunset": "19:47 (BST)",
          "Maghrib": "19:47 (BST)",
          "Isha": "21:48 (BST)",
          "Imsak": "04:25 (BST)",
          "Midnight": "01:11 (BST)",
          "Firstthird": "23:22 (BST)",
          "Lastthird": "03:00 (BST)"
        },
        "date": {
          "readable": "03 Apr 2023",
          "timestamp": "1680508861",
          "gregorian": {
            "date": "03-04-2023",
            "format": "DD-MM-YYYY",
            "day": "03",
            "weekday": {
              "en": "Monday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "12-09-1444",
            "format": "DD-MM-YYYY",
            "day": "12",
            "weekday": {
              "en": "Al Athnayn",
              "ar": "الاثنين"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:32 (BST)",
          "Sunrise": "06:33 (BST)",
          "Dhuhr": "13:11 (BST)",
          "Asr": "17:44 (BST)",
          "Sunset": "19:48 (BST)",
          "Maghrib": "19:48 (BST)",
          "Isha": "21:50 (BST)",
          "Imsak": "04:22 (BST)",
          "Midnight": "01:11 (BST)",
          "Firstthird": "23:23 (BST)",
          "Lastthird": "02:59 (BST)"
        },
        "date": {
          "readable": "04 Apr 2023",
          "timestamp": "1680595261",
          "gregorian": {
            "date": "04-04-2023",
            "format": "DD-MM-YYYY",
            "day": "04",
            "weekday": {
              "en": "Tuesday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "13-09-1444",
            "format": "DD-MM-YYYY",
            "day": "13",
            "weekday": {
              "en": "Al Thalaata",
              "ar": "الثلاثاء"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:29 (BST)",
          "Sunrise": "06:30 (BST)",
          "Dhuhr": "13:10 (BST)",
          "Asr": "17:45 (BST)",
          "Sunset": "19:50 (BST)",
          "Maghrib": "19:50 (BST)",
          "Isha": "21:53 (BST)",
          "Imsak": "04:19 (BST)",
          "Midnight": "01:11 (BST)",
          "Firstthird": "23:23 (BST)",
          "Lastthird": "02:58 (BST)"
        },
        "date": {
          "readable": "05 Apr 2023",
          "timestamp": "1680681661",
          "gregorian": {
            "date": "05-04-2023",
            "format": "DD-MM-YYYY",
            "day": "05",
            "weekday": {
              "en": "Wednesday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "14-09-1444",
            "format": "DD-MM-YYYY",
            "day": "14",
            "weekday": {
              "en": "Al Arba'a",
              "ar": "الاربعاء"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:26 (BST)",
          "Sunrise": "06:28 (BST)",
          "Dhuhr": "13:10 (BST)",
          "Asr": "17:46 (BST)",
          "Sunset": "19:52 (BST)",
          "Maghrib": "19:52 (BST)",
          "Isha": "21:55 (BST)",
          "Imsak": "04:16 (BST)",
          "Midnight": "01:10 (BST)",
          "Firstthird": "23:24 (BST)",
          "Lastthird": "02:57 (BST)"
        },
        "date": {
          "readable": "06 Apr 2023",
          "timestamp": "1680768061",
          "gregorian": {
            "date": "06-04-2023",
            "format": "DD-MM-YYYY",
            "day": "06",
            "weekday": {
              "en": "Thursday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "15-09-1444",
            "format": "DD-MM-YYYY",
            "day": "15",
            "weekday": {
              "en": "Al Khamees",
              "ar": "الخميس"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:23 (BST)",
          "Sunrise": "06:26 (BST)",
          "Dhuhr": "13:10 (BST)",
          "Asr": "17:46 (BST)",
          "Sunset": "19:54 (BST)",
          "Maghrib": "19:54 (BST)",
          "Isha": "21:58 (BST)",
          "Imsak": "04:13 (BST)",
          "Midnight": "01:10 (BST)",
          "Firstthird": "23:24 (BST)",
          "Lastthird": "02:56 (BST)"
        },
        "date": {
          "readable": "07 Apr 2023",
          "timestamp": "1680854461",
          "gregorian": {
            "date": "07-04-2023",
            "format": "DD-MM-YYYY",
            "day": "07",
            "weekday": {
              "en": "Friday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "16-09-1444",
            "format": "DD-MM-YYYY",
            "day": "16",
            "weekday": {
              "en": "Al Juma'a",
              "ar": "الجمعة"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:20 (BST)",
          "Sunrise": "06:23 (BST)",
          "Dhuhr": "13:09 (BST)",
          "Asr": "17:47 (BST)",
          "Sunset": "19:55 (BST)",
          "Maghrib": "19:55 (BST)",
          "Isha": "22:00 (BST)",
          "Imsak": "04:10 (BST)",
          "Midnight": "01:10 (BST)",
          "Firstthird": "23:24 (BST)",
          "Lastthird": "02:55 (BST)"
        },
        "date": {
          "readable": "08 Apr 2023",
          "timestamp": "1680940861",
          "gregorian": {
            "date": "08-04-2023",
            "format": "DD-MM-YYYY",
            "day": "08",
            "weekday": {
              "en": "Saturday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "17-09-1444",
            "format": "DD-MM-YYYY",
            "day": "17",
            "weekday": {
              "en": "Al Sabt",
              "ar": "السبت"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:17 (BST)",
          "Sunrise": "06:21 (BST)",
          "Dhuhr": "13:09 (BST)",
          "Asr": "17:48 (BST)",
          "Sunset": "19:57 (BST)",
          "Maghrib": "19:57 (BST)",
          "Isha": "22:03 (BST)",
          "Imsak": "04:07 (BST)",
          "Midnight": "01:10 (BST)",
          "Firstthird": "23:25 (BST)",
          "Lastthird": "02:54 (BST)"
        },
        "date": {
          "readable": "09 Apr 2023",
          "timestamp": "1681027261",
          "gregorian": {
            "date": "09-04-2023",
            "format": "DD-MM-YYYY",
            "day": "09",
            "weekday": {
              "en": "Sunday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "18-09-1444",
            "format": "DD-MM-YYYY",
            "day": "18",
            "weekday": {
              "en": "Al Ahad",
              "ar": "الاحد"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:14 (BST)",
          "Sunrise": "06:19 (BST)",
          "Dhuhr": "13:09 (BST)",
          "Asr": "17:49 (BST)",
          "Sunset": "19:59 (BST)",
          "Maghrib": "19:59 (BST)",
          "Isha": "22:05 (BST)",
          "Imsak": "04:04 (BST)",
          "Midnight": "01:09 (BST)",
          "Firstthird": "23:25 (BST)",
          "Lastthird": "02:53 (BST)"
        },
        "date": {
          "readable": "10 Apr 2023",
          "timestamp": "1681113661",
          "gregorian": {
            "date": "10-04-2023",
            "format": "DD-MM-YYYY",
            "day": "10",
            "weekday": {
              "en": "Monday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "19-09-1444",
            "format": "DD-MM-YYYY",
            "day": "19",
            "weekday": {
              "en": "Al Athnayn",
              "ar": "الاثنين"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:11 (BST)",
          "Sunrise": "06:17 (BST)",
          "Dhuhr": "13:09 (BST)",
          "Asr": "17:50 (BST)",
          "Sunset": "20:01 (BST)",
          "Maghrib": "20:01 (BST)",
          "Isha": "22:08 (BST)",
          "Imsak": "04:01 (BST)",
          "Midnight": "01:09 (BST)",
          "Firstthird": "23:26 (BST)",
          "Lastthird": "02:53 (BST)"
        },
        "date": {
          "readable": "11 Apr 2023",
          "timestamp": "1681200061",
          "gregorian": {
            "date": "11-04-2023",
            "format": "DD-MM-YYYY",
            "day": "11",
            "weekday": {
              "en": "Tuesday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "20-09-1444",
            "format": "DD-MM-YYYY",
            "day": "20",
            "weekday": {
              "en": "Al Thalaata",
              "ar": "الثلاثاء"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:07 (BST)",
          "Sunrise": "06:14 (BST)",
          "Dhuhr": "13:08 (BST)",
          "Asr": "17:51 (BST)",
          "Sunset": "20:02 (BST)",
          "Maghrib": "20:02 (BST)",
          "Isha": "22:11 (BST)",
          "Imsak": "03:57 (BST)",
          "Midnight": "01:09 (BST)",
          "Firstthird": "23:26 (BST)",
          "Lastthird": "02:52 (BST)"
        },
        "date": {
          "readable": "12 Apr 2023",
          "timestamp": "1681286461",
          "gregorian": {
            "date": "12-04-2023",
            "format": "DD-MM-YYYY",
            "day": "12",
            "weekday": {
              "en": "Wednesday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "21-09-1444",
            "format": "DD-MM-YYYY",
            "day": "21",
            "weekday": {
              "en": "Al Arba'a",
              "ar": "الاربعاء"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": [
              "Lailat-ul-Qadr"
            ]
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:04 (BST)",
          "Sunrise": "06:12 (BST)",
          "Dhuhr": "13:08 (BST)",
          "Asr": "17:52 (BST)",
          "Sunset": "20:04 (BST)",
          "Maghrib": "20:04 (BST)",
          "Isha": "22:13 (BST)",
          "Imsak": "03:54 (BST)",
          "Midnight": "01:09 (BST)",
          "Firstthird": "23:26 (BST)",
          "Lastthird": "02:51 (BST)"
        },
        "date": {
          "readable": "13 Apr 2023",
          "timestamp": "1681372861",
          "gregorian": {
            "date": "13-04-2023",
            "format": "DD-MM-YYYY",
            "day": "13",
            "weekday": {
              "en": "Thursday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "22-09-1444",
            "format": "DD-MM-YYYY",
            "day": "22",
            "weekday": {
              "en": "Al Khamees",
              "ar": "الخميس"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "04:01 (BST)",
          "Sunrise": "06:10 (BST)",
          "Dhuhr": "13:08 (BST)",
          "Asr": "17:53 (BST)",
          "Sunset": "20:06 (BST)",
          "Maghrib": "20:06 (BST)",
          "Isha": "22:16 (BST)",
          "Imsak": "03:51 (BST)",
          "Midnight": "01:08 (BST)",
          "Firstthird": "23:27 (BST)",
          "Lastthird": "02:50 (BST)"
        },
        "date": {
          "readable": "14 Apr 2023",
          "timestamp": "1681459261",
          "gregorian": {
            "date": "14-04-2023",
            "format": "DD-MM-YYYY",
            "day": "14",
            "weekday": {
              "en": "Friday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "23-09-1444",
            "format": "DD-MM-YYYY",
            "day": "23",
            "weekday": {
              "en": "Al Juma'a",
              "ar": "الجمعة"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": [
              "Lailat-ul-Qadr"
            ]
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:58 (BST)",
          "Sunrise": "06:08 (BST)",
          "Dhuhr": "13:08 (BST)",
          "Asr": "17:53 (BST)",
          "Sunset": "20:08 (BST)",
          "Maghrib": "20:08 (BST)",
          "Isha": "22:19 (BST)",
          "Imsak": "03:48 (BST)",
          "Midnight": "01:08 (BST)",
          "Firstthird": "23:27 (BST)",
          "Lastthird": "02:49 (BST)"
        },
        "date": {
          "readable": "15 Apr 2023",
          "timestamp": "1681545661",
          "gregorian": {
            "date": "15-04-2023",
            "format": "DD-MM-YYYY",
            "day": "15",
            "weekday": {
              "en": "Saturday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "24-09-1444",
            "format": "DD-MM-YYYY",
            "day": "24",
            "weekday": {
              "en": "Al Sabt",
              "ar": "السبت"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:55 (BST)",
          "Sunrise": "06:05 (BST)",
          "Dhuhr": "13:07 (BST)",
          "Asr": "17:54 (BST)",
          "Sunset": "20:09 (BST)",
          "Maghrib": "20:09 (BST)",
          "Isha": "22:22 (BST)",
          "Imsak": "03:45 (BST)",
          "Midnight": "01:08 (BST)",
          "Firstthird": "23:28 (BST)",
          "Lastthird": "02:48 (BST)"
        },
        "date": {
          "readable": "16 Apr 2023",
          "timestamp": "1681632061",
          "gregorian": {
            "date": "16-04-2023",
            "format": "DD-MM-YYYY",
            "day": "16",
            "weekday": {
              "en": "Sunday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "25-09-1444",
            "format": "DD-MM-YYYY",
            "day": "25",
            "weekday": {
              "en": "Al Ahad",
              "ar": "الاحد"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": [
              "Lailat-ul-Qadr"
            ]
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:51 (BST)",
          "Sunrise": "06:03 (BST)",
          "Dhuhr": "13:07 (BST)",
          "Asr": "17:55 (BST)",
          "Sunset": "20:11 (BST)",
          "Maghrib": "20:11 (BST)",
          "Isha": "22:25 (BST)",
          "Imsak": "03:41 (BST)",
          "Midnight": "01:08 (BST)",
          "Firstthird": "23:28 (BST)",
          "Lastthird": "02:47 (BST)"
        },
        "date": {
          "readable": "17 Apr 2023",
          "timestamp": "1681718461",
          "gregorian": {
            "date": "17-04-2023",
            "format": "DD-MM-YYYY",
            "day": "17",
            "weekday": {
              "en": "Monday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "26-09-1444",
            "format": "DD-MM-YYYY",
            "day": "26",
            "weekday": {
              "en": "Al Athnayn",
              "ar": "الاثنين"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:48 (BST)",
          "Sunrise": "06:01 (BST)",
          "Dhuhr": "13:07 (BST)",
          "Asr": "17:56 (BST)",
          "Sunset": "20:13 (BST)",
          "Maghrib": "20:13 (BST)",
          "Isha": "22:28 (BST)",
          "Imsak": "03:38 (BST)",
          "Midnight": "01:07 (BST)",
          "Firstthird": "23:29 (BST)",
          "Lastthird": "02:46 (BST)"
        },
        "date": {
          "readable": "18 Apr 2023",
          "timestamp": "1681804861",
          "gregorian": {
            "date": "18-04-2023",
            "format": "DD-MM-YYYY",
            "day": "18",
            "weekday": {
              "en": "Tuesday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "27-09-1444",
            "format": "DD-MM-YYYY",
            "day": "27",
            "weekday": {
              "en": "Al Thalaata",
              "ar": "الثلاثاء"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": [
              "Lailat-ul-Qadr"
            ]
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:44 (BST)",
          "Sunrise": "05:59 (BST)",
          "Dhuhr": "13:07 (BST)",
          "Asr": "17:57 (BST)",
          "Sunset": "20:15 (BST)",
          "Maghrib": "20:15 (BST)",
          "Isha": "22:31 (BST)",
          "Imsak": "03:34 (BST)",
          "Midnight": "01:07 (BST)",
          "Firstthird": "23:29 (BST)",
          "Lastthird": "02:45 (BST)"
        },
        "date": {
          "readable": "19 Apr 2023",
          "timestamp": "1681891261",
          "gregorian": {
            "date": "19-04-2023",
            "format": "DD-MM-YYYY",
            "day": "19",
            "weekday": {
              "en": "Wednesday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "28-09-1444",
            "format": "DD-MM-YYYY",
            "day": "28",
            "weekday": {
              "en": "Al Arba'a",
              "ar": "الاربعاء"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:41 (BST)",
          "Sunrise": "05:57 (BST)",
          "Dhuhr": "13:06 (BST)",
          "Asr": "17:57 (BST)",
          "Sunset": "20:16 (BST)",
          "Maghrib": "20:16 (BST)",
          "Isha": "22:34 (BST)",
          "Imsak": "03:31 (BST)",
          "Midnight": "01:07 (BST)",
          "Firstthird": "23:29 (BST)",
          "Lastthird": "02:44 (BST)"
        },
        "date": {
          "readable": "20 Apr 2023",
          "timestamp": "1681977661",
          "gregorian": {
            "date": "20-04-2023",
            "format": "DD-MM-YYYY",
            "day": "20",
            "weekday": {
              "en": "Thursday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "29-09-1444",
            "format": "DD-MM-YYYY",
            "day": "29",
            "weekday": {
              "en": "Al Khamees",
              "ar": "الخميس"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": [
              "Lailat-ul-Qadr"
            ]
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:38 (BST)",
          "Sunrise": "05:54 (BST)",
          "Dhuhr": "13:06 (BST)",
          "Asr": "17:58 (BST)",
          "Sunset": "20:18 (BST)",
          "Maghrib": "20:18 (BST)",
          "Isha": "22:37 (BST)",
          "Imsak": "03:28 (BST)",
          "Midnight": "01:07 (BST)",
          "Firstthird": "23:30 (BST)",
          "Lastthird": "02:44 (BST)"
        },
        "date": {
          "readable": "21 Apr 2023",
          "timestamp": "1682064061",
          "gregorian": {
            "date": "21-04-2023",
            "format": "DD-MM-YYYY",
            "day": "21",
            "weekday": {
              "en": "Friday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "30-09-1444",
            "format": "DD-MM-YYYY",
            "day": "30",
            "weekday": {
              "en": "Al Juma'a",
              "ar": "الجمعة"
            },
            "month": {
              "number": 9,
              "en": "Ramaḍān",
              "ar": "رَمَضان"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:34 (BST)",
          "Sunrise": "05:52 (BST)",
          "Dhuhr": "13:06 (BST)",
          "Asr": "17:59 (BST)",
          "Sunset": "20:20 (BST)",
          "Maghrib": "20:20 (BST)",
          "Isha": "22:40 (BST)",
          "Imsak": "03:24 (BST)",
          "Midnight": "01:07 (BST)",
          "Firstthird": "23:30 (BST)",
          "Lastthird": "02:43 (BST)"
        },
        "date": {
          "readable": "22 Apr 2023",
          "timestamp": "1682150461",
          "gregorian": {
            "date": "22-04-2023",
            "format": "DD-MM-YYYY",
            "day": "22",
            "weekday": {
              "en": "Saturday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "01-10-1444",
            "format": "DD-MM-YYYY",
            "day": "01",
            "weekday": {
              "en": "Al Sabt",
              "ar": "السبت"
            },
            "month": {
              "number": 10,
              "en": "Shawwāl",
              "ar": "شَوّال"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": [
              "Eid-ul-Fitr"
            ]
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:31 (BST)",
          "Sunrise": "05:50 (BST)",
          "Dhuhr": "13:06 (BST)",
          "Asr": "18:00 (BST)",
          "Sunset": "20:22 (BST)",
          "Maghrib": "20:22 (BST)",
          "Isha": "22:43 (BST)",
          "Imsak": "03:21 (BST)",
          "Midnight": "01:06 (BST)",
          "Firstthird": "23:31 (BST)",
          "Lastthird": "02:42 (BST)"
        },
        "date": {
          "readable": "23 Apr 2023",
          "timestamp": "1682236861",
          "gregorian": {
            "date": "23-04-2023",
            "format": "DD-MM-YYYY",
            "day": "23",
            "weekday": {
              "en": "Sunday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "02-10-1444",
            "format": "DD-MM-YYYY",
            "day": "02",
            "weekday": {
              "en": "Al Ahad",
              "ar": "الاحد"
            },
            "month": {
              "number": 10,
              "en": "Shawwāl",
              "ar": "شَوّال"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:27 (BST)",
          "Sunrise": "05:48 (BST)",
          "Dhuhr": "13:06 (BST)",
          "Asr": "18:01 (BST)",
          "Sunset": "20:23 (BST)",
          "Maghrib": "20:23 (BST)",
          "Isha": "22:46 (BST)",
          "Imsak": "03:17 (BST)",
          "Midnight": "01:06 (BST)",
          "Firstthird": "23:31 (BST)",
          "Lastthird": "02:41 (BST)"
        },
        "date": {
          "readable": "24 Apr 2023",
          "timestamp": "1682323261",
          "gregorian": {
            "date": "24-04-2023",
            "format": "DD-MM-YYYY",
            "day": "24",
            "weekday": {
              "en": "Monday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "03-10-1444",
            "format": "DD-MM-YYYY",
            "day": "03",
            "weekday": {
              "en": "Al Athnayn",
              "ar": "الاثنين"
            },
            "month": {
              "number": 10,
              "en": "Shawwāl",
              "ar": "شَوّال"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:23 (BST)",
          "Sunrise": "05:46 (BST)",
          "Dhuhr": "13:05 (BST)",
          "Asr": "18:01 (BST)",
          "Sunset": "20:25 (BST)",
          "Maghrib": "20:25 (BST)",
          "Isha": "22:49 (BST)",
          "Imsak": "03:13 (BST)",
          "Midnight": "01:06 (BST)",
          "Firstthird": "23:32 (BST)",
          "Lastthird": "02:40 (BST)"
        },
        "date": {
          "readable": "25 Apr 2023",
          "timestamp": "1682409661",
          "gregorian": {
            "date": "25-04-2023",
            "format": "DD-MM-YYYY",
            "day": "25",
            "weekday": {
              "en": "Tuesday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "04-10-1444",
            "format": "DD-MM-YYYY",
            "day": "04",
            "weekday": {
              "en": "Al Thalaata",
              "ar": "الثلاثاء"
            },
            "month": {
              "number": 10,
              "en": "Shawwāl",
              "ar": "شَوّال"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:20 (BST)",
          "Sunrise": "05:44 (BST)",
          "Dhuhr": "13:05 (BST)",
          "Asr": "18:02 (BST)",
          "Sunset": "20:27 (BST)",
          "Maghrib": "20:27 (BST)",
          "Isha": "22:53 (BST)",
          "Imsak": "03:10 (BST)",
          "Midnight": "01:06 (BST)",
          "Firstthird": "23:32 (BST)",
          "Lastthird": "02:39 (BST)"
        },
        "date": {
          "readable": "26 Apr 2023",
          "timestamp": "1682496061",
          "gregorian": {
            "date": "26-04-2023",
            "format": "DD-MM-YYYY",
            "day": "26",
            "weekday": {
              "en": "Wednesday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "05-10-1444",
            "format": "DD-MM-YYYY",
            "day": "05",
            "weekday": {
              "en": "Al Arba'a",
              "ar": "الاربعاء"
            },
            "month": {
              "number": 10,
              "en": "Shawwāl",
              "ar": "شَوّال"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:16 (BST)",
          "Sunrise": "05:42 (BST)",
          "Dhuhr": "13:05 (BST)",
          "Asr": "18:03 (BST)",
          "Sunset": "20:28 (BST)",
          "Maghrib": "20:28 (BST)",
          "Isha": "22:56 (BST)",
          "Imsak": "03:06 (BST)",
          "Midnight": "01:06 (BST)",
          "Firstthird": "23:33 (BST)",
          "Lastthird": "02:39 (BST)"
        },
        "date": {
          "readable": "27 Apr 2023",
          "timestamp": "1682582461",
          "gregorian": {
            "date": "27-04-2023",
            "format": "DD-MM-YYYY",
            "day": "27",
            "weekday": {
              "en": "Thursday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "06-10-1444",
            "format": "DD-MM-YYYY",
            "day": "06",
            "weekday": {
              "en": "Al Khamees",
              "ar": "الخميس"
            },
            "month": {
              "number": 10,
              "en": "Shawwāl",
              "ar": "شَوّال"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:12 (BST)",
          "Sunrise": "05:40 (BST)",
          "Dhuhr": "13:05 (BST)",
          "Asr": "18:04 (BST)",
          "Sunset": "20:30 (BST)",
          "Maghrib": "20:30 (BST)",
          "Isha": "23:00 (BST)",
          "Imsak": "03:02 (BST)",
          "Midnight": "01:05 (BST)",
          "Firstthird": "23:33 (BST)",
          "Lastthird": "02:38 (BST)"
        },
        "date": {
          "readable": "28 Apr 2023",
          "timestamp": "1682668861",
          "gregorian": {
            "date": "28-04-2023",
            "format": "DD-MM-YYYY",
            "day": "28",
            "weekday": {
              "en": "Friday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "07-10-1444",
            "format": "DD-MM-YYYY",
            "day": "07",
            "weekday": {
              "en": "Al Juma'a",
              "ar": "الجمعة"
            },
            "month": {
              "number": 10,
              "en": "Shawwāl",
              "ar": "شَوّال"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:09 (BST)",
          "Sunrise": "05:38 (BST)",
          "Dhuhr": "13:05 (BST)",
          "Asr": "18:04 (BST)",
          "Sunset": "20:32 (BST)",
          "Maghrib": "20:32 (BST)",
          "Isha": "23:03 (BST)",
          "Imsak": "02:59 (BST)",
          "Midnight": "01:05 (BST)",
          "Firstthird": "23:34 (BST)",
          "Lastthird": "02:37 (BST)"
        },
        "date": {
          "readable": "29 Apr 2023",
          "timestamp": "1682755261",
          "gregorian": {
            "date": "29-04-2023",
            "format": "DD-MM-YYYY",
            "day": "29",
            "weekday": {
              "en": "Saturday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "08-10-1444",
            "format": "DD-MM-YYYY",
            "day": "08",
            "weekday": {
              "en": "Al Sabt",
              "ar": "السبت"
            },
            "month": {
              "number": 10,
              "en": "Shawwāl",
              "ar": "شَوّال"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      },
      {
        "timings": {
          "Fajr": "03:05 (BST)",
          "Sunrise": "05:36 (BST)",
          "Dhuhr": "13:05 (BST)",
          "Asr": "18:05 (BST)",
          "Sunset": "20:34 (BST)",
          "Maghrib": "20:34 (BST)",
          "Isha": "23:07 (BST)",
          "Imsak": "02:55 (BST)",
          "Midnight": "01:05 (BST)",
          "Firstthird": "23:34 (BST)",
          "Lastthird": "02:36 (BST)"
        },
        "date": {
          "readable": "30 Apr 2023",
          "timestamp": "1682841661",
          "gregorian": {
            "date": "30-04-2023",
            "format": "DD-MM-YYYY",
            "day": "30",
            "weekday": {
              "en": "Sunday"
            },
            "month": {
              "number": 4,
              "en": "April"
            },
            "year": "2023",
            "designation": {
              "abbreviated": "AD",
              "expanded": "Anno Domini"
            }
          },
          "hijri": {
            "date": "09-10-1444",
            "format": "DD-MM-YYYY",
            "day": "09",
            "weekday": {
              "en": "Al Ahad",
              "ar": "الاحد"
            },
            "month": {
              "number": 10,
              "en": "Shawwāl",
              "ar": "شَوّال"
            },
            "year": "1444",
            "designation": {
              "abbreviated": "AH",
              "expanded": "Anno Hegirae"
            },
            "holidays": []
          }
        },
        "meta": {
          "latitude": 52.484944770653584,
          "longitude": -1.8627842408110806,
          "timezone": "Europe/London",
          "method": {
            "id": 1,
            "name": "University of Islamic Sciences, Karachi",
            "params": {
              "Fajr": 18,
              "Isha": 18
            },
            "location": {
              "latitude": 24.8614622,
              "longitude": 67.0099388
            }
          },
          "latitudeAdjustmentMethod": "ANGLE_BASED",
          "midnightMode": "STANDARD",
          "school": "STANDARD",
          "offset": {
            "Imsak": 0,
            "Fajr": 0,
            "Sunrise": "-3",
            "Dhuhr": 0,
            "Asr": " 58",
            "Maghrib": " 2",
            "Sunset": " 2",
            "Isha": 0,
            "Midnight": 0
          }
        }
      }
];