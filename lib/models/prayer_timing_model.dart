final List<Map<String, dynamic>> prayerTimings = [
  {
    'title': 'Fajr Start & Sehri Ends',
  },
  {
    'title': 'Sunrise',
  },
  {
    'title': 'Zuhr',
  },
  {
    'title': 'Asr',
  },
  {
    'title': 'Maghrib & Iftar',
  },
  {
    'title': 'Isha',
  },
];



class PrayerTime {
  final DateTime date;
  final PrayerTiming timing;

//<editor-fold desc="Data Methods">
  const PrayerTime({
    required this.date,
    required this.timing,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PrayerTime &&
          runtimeType == other.runtimeType &&
          date == other.date &&
          timing == other.timing);

  @override
  int get hashCode => date.hashCode ^ timing.hashCode;

  @override
  String toString() {
    return 'PrayerTime{' + ' date: $date,' + ' timing: $timing,' + '}';
  }

  PrayerTime copyWith({
    DateTime? date,
    PrayerTiming? timing,
  }) {
    return PrayerTime(
      date: date ?? this.date,
      timing: timing ?? this.timing,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': this.date.millisecondsSinceEpoch,
      'timing': this.timing,
    };
  }

  factory PrayerTime.fromMap(Map<String, dynamic> map) {
    return PrayerTime(
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      timing: map['timing'] as PrayerTiming,
    );
  }

//</editor-fold>
}

class PrayerTiming {
  final String fajr;
  final String sunrise;
  final String zuhr;
  final String asr;
  final String maghrib;
  final String isha;

//<editor-fold desc="Data Methods">
  const PrayerTiming({
    required this.fajr,
    required this.sunrise,
    required this.zuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PrayerTiming &&
          runtimeType == other.runtimeType &&
          fajr == other.fajr &&
          sunrise == other.sunrise &&
          zuhr == other.zuhr &&
          asr == other.asr &&
          maghrib == other.maghrib &&
          isha == other.isha);

  @override
  int get hashCode =>
      fajr.hashCode ^
      sunrise.hashCode ^
      zuhr.hashCode ^
      asr.hashCode ^
      maghrib.hashCode ^
      isha.hashCode;

  @override
  String toString() {
    return 'PrayerTiming{' +
        ' fajr: $fajr,' +
        ' sunrise: $sunrise,' +
        ' zuhr: $zuhr,' +
        ' asr: $asr,' +
        ' maghrib: $maghrib,' +
        ' isha: $isha,' +
        '}';
  }

  PrayerTiming copyWith({
    String? fajr,
    String? sunrise,
    String? zuhr,
    String? asr,
    String? maghrib,
    String? isha,
  }) {
    return PrayerTiming(
      fajr: fajr ?? this.fajr,
      sunrise: sunrise ?? this.sunrise,
      zuhr: zuhr ?? this.zuhr,
      asr: asr ?? this.asr,
      maghrib: maghrib ?? this.maghrib,
      isha: isha ?? this.isha,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fajr': this.fajr,
      'sunrise': this.sunrise,
      'zuhr': this.zuhr,
      'asr': this.asr,
      'maghrib': this.maghrib,
      'isha': this.isha,
    };
  }

  factory PrayerTiming.fromMap(Map<String, dynamic> map) {
    return PrayerTiming(
      fajr: map['fajr'] as String,
      sunrise: map['sunrise'] as String,
      zuhr: map['zuhr'] as String,
      asr: map['asr'] as String,
      maghrib: map['maghrib'] as String,
      isha: map['isha'] as String,
    );
  }

//</editor-fold>
}

