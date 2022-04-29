import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:intl/src/date_format_internal.dart';

import 'package:http/http.dart';

class WorldTime {

  String location;
  String time = '';
  String url;
  String flag;
  final String endPoint = 'worldtimeapi.org';

  WorldTime({required this.location, required this.flag, required this.url});

  Future getTime() async {

    Response response = await get(Uri.https(endPoint, '/api/timezone/$url'));
    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    int offset = int.parse(data['utc_offset'].substring(0, 3));

    DateTime dateTime = DateTime.parse(datetime);
    dateTime = dateTime.add(Duration(hours: offset));

    // time = dateTime.toString();
    time = DateFormat.jm().format(dateTime);

  }


}