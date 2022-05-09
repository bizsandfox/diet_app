import 'package:diet_app/widgets/calendar_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/calendar_model.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CalendarModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Diet Calendar App',
      home: CalendarHome(),
    );
  }
}
