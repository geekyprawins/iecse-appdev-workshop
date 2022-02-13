import 'dart:async';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTimer extends StatefulWidget {
  @override
  State<MyTimer> createState() => _MyTimerState();
}

class _MyTimerState extends State<MyTimer> {
  int _counter = 0;
  int _timer = 0;

  void _increment() {
    setState(() {
      _counter = _counter + 1;
    });
    print("Counter -> $_counter");
  }

  void _startTimer() {
    _timer = _counter;

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timer == 1) {
        timer.cancel();
      }
      setState(() {
        _timer = _timer - 1;
      });
      print("Timer at $_timer");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Timer App",
            style: TextStyle(
              fontSize: 35,
              fontFamily: "Redressed",
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Timer set to: ",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              "$_counter s",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Time remaining: ",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              "$_timer s",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            TextButton.icon(
              onPressed: _startTimer,
              icon: Icon(FontAwesomeIcons.clock),
              label: Text("Start Timer"),
            ),
            // Row(
            //   children: [Text("IECSE"), Text("Workshop")],
            // ),

            Image.asset("images/timer.png"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(
          FontAwesomeIcons.plusCircle,
          size: 30,
          // color: Colors.cyan,
        ),
      ),
    );
  }
}
