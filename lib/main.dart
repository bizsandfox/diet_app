import 'package:diet_app/widgets/calendar_header.dart';
import 'package:diet_app/widgets/month.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Welcome to Flutter"),
          ),
          body: Column(
            children: const [
              CalendarHeader(year: 2022, month: 5),
              Expanded(
                child: Month(year: 2022, month: 5),
              )
            ],
          )),
    );
  }
}
