


import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';

class PrayTime{
  var myCoordinates ; // Replace with your own location lat, lng.
  var params ;
  var prayerTimes;

  PrayTime(lat,lon){
    this.myCoordinates=Coordinates(lat, lon);
    params= CalculationMethod.karachi.getParameters();
    params.madhab = Madhab.hanafi;
    this.prayerTimes = PrayerTimes.today(myCoordinates, params);

    final newYork = Coordinates(lat, lon);
    var datTime=DateTime.now();
    final nyDate = DateComponents(datTime.year, datTime.month,datTime.day);
    final nyParams = CalculationMethod.umm_al_qura.getParameters();
    nyParams.madhab = Madhab.hanafi;
    final nyPrayerTimes = PrayerTimes(newYork, nyDate, nyParams);

    print(DateFormat.jm().format(nyPrayerTimes.maghrib));
    print(CalculationMethod.values);


  }


  getPrayTime(Prayer pray){
   switch(pray){

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
   }
  }
}