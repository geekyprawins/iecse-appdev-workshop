import 'package:flutter/material.dart';

import 'package:timer_app/my_timer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Timer App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyTimer(),
    );
  }
}
