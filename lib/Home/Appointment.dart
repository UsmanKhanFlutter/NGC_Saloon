import 'package:flutter/material.dart';

class AppointMent extends StatefulWidget {
  const AppointMent({Key? key}) : super(key: key);

  @override
  _AppointMentState createState() => _AppointMentState();
}

class _AppointMentState extends State<AppointMent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Appointments"),
      ),
    );
  }
}
