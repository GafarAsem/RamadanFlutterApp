import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';


class PrayTime {
  var coordinates;
  var datTime;
  var date;
  var params;
  var prayerTimes;
  var lat;
  var lon;

  static final PrayTime _singleton = PrayTime.initial();

  factory PrayTime(){
    return _singleton;
  }

  PrayTime.initial();

  setLocation(double lat, double lon, CalculationMethod zone, Madhab madhab) {
    this.lat = lat;
    this.lon = lon;

    coordinates = Coordinates(lat, lon);
    datTime = DateTime.now();
    date = DateComponents(datTime.year, datTime.month, datTime.day);

    params = zone.getParameters();

    params.madhab = madhab;
    prayerTimes = PrayerTimes(coordinates, date, params);
  }

  getCurrentPray() {
    return prayerTimes.currentPrayer();
  }

  getNextPray() {
    return prayerTimes.nextPrayer();
  }

  getPrayTime(Prayer pray) {
    switch (pray) {
      case Prayer.fajr:
        return DateFormat.jm().format(prayerTimes.fajr);
        break;
      case Prayer.dhuhr:
        return DateFormat.jm().format(prayerTimes.dhuhr);
        break;
      case Prayer.asr:
        return DateFormat.jm().format(prayerTimes.asr);
        break;
      case Prayer.maghrib:
        return DateFormat.jm().format(prayerTimes.maghrib);
        break;
      case Prayer.isha:
        return DateFormat.jm().format(prayerTimes.isha);
        break;
      case Prayer.none:
        return DateFormat.jm().format(prayerTimes.none);
        break;
      case Prayer.sunrise:
        return DateFormat.jm().format(prayerTimes.sunrise);
        break;
    }
  }
}
