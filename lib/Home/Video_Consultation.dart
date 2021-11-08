import 'package:flutter/material.dart';

class VideoConsultaion extends StatefulWidget {
  const VideoConsultaion({Key? key}) : super(key: key);

  @override
  _VideoConsultaionState createState() => _VideoConsultaionState();
}

class _VideoConsultaionState extends State<VideoConsultaion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("Video Consultaion"),
    ));
  }
}
