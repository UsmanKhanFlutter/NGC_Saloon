import 'package:flutter/material.dart';

class Deals extends StatefulWidget {
  const Deals({Key? key}) : super(key: key);

  @override
  _DealsState createState() => _DealsState();
}

class _DealsState extends State<Deals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("Deals"),
    ));
  }
}
