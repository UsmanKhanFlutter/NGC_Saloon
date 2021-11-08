import 'package:flutter/material.dart';

class UndefinedPage extends StatefulWidget {
  const UndefinedPage({Key? key}) : super(key: key);

  @override
  _UndefinedPageState createState() => _UndefinedPageState();
}

class _UndefinedPageState extends State<UndefinedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("no Page yet"),
      ),
    );
  }
}
