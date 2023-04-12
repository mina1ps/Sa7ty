import 'package:flutter/material.dart';
import 'package:medical_care/Home_page.dart';
import 'package:booking_calendar/booking_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';


void main() {
  initializeDateFormatting()
      .then((_) => runApp( MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );

  }
}
