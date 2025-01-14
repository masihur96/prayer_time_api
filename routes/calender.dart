// import 'package:adhan/adhan.dart';
import 'package:dart_frog/dart_frog.dart';
// import 'package:intl/intl.dart';
import 'package:prayer_time_api/model/calender.dart';

Response onRequest(RequestContext context) {
  final request = context.request;
  final method = request.method.value;
  if (method != 'GET') {
    return Response.json(
      statusCode: 405,
      body: {'error': 'Method Not Allowed'},
    );
  }

  // final queryParams = request.url.queryParameters;
  // final lat = double.tryParse(queryParams['lat'] ?? '');
  // final lon = double.tryParse(queryParams['lon'] ?? '');
  // if (lat == null || lon == null) {
  //   return Response.json(
  //     statusCode: 400,
  //     body: {
  //       'error': 'Incorrect query parameters',
  //       'params': [
  //         {'name': 'lat', 'status': 'Required', 'type': 'double'},
  //         {'name': 'lon', 'status': 'Required', 'type': 'double'}
  //       ]
  //     },
  //   );
  // }

  // final coordinates = Coordinates(lat, lon);
  // final params = CalculationMethod.moon_sighting_committee.getParameters();
  // // params.madhab = Madhab.hanafi;

  // final shiamStartDate = DateTime(2023, 3, 24);
  // final shiamEndDate = DateTime(2023, 4, 23);

  // final calenderRamadanTimes = <Map<String, dynamic>>[];
  // var dateToCalculate = shiamStartDate;
  // var ramadanCounter = 1;

  // while (dateToCalculate.isBefore(shiamEndDate)) {
  //   final dateComponents = DateComponents.from(dateToCalculate);
  //   final prayerTimes = PrayerTimes(coordinates, dateComponents, params);

  //   final dataToAdd = {
  //     'ramadan': ramadanCounter,
  //     'date': DateFormat.yMEd().format(dateToCalculate),
  //     'ramadan_times': {
  //       'sehri': DateFormat.jm().format(
  //         prayerTimes.fajr.subtract(const Duration(minutes: 5)),
  //       ),
  //       'iftar': DateFormat.jm().format(prayerTimes.maghrib),
  //     }
  //   };
  //   calenderRamadanTimes.add(dataToAdd);
  //   dateToCalculate = dateToCalculate.add(const Duration(days: 1));
  //   ramadanCounter += 1;
  // }

  return Response.json(
    body: {
      'service': 'Prayer Time API',
      'version': '0.9.0',
      'calender': calender,
    },
  );
}
