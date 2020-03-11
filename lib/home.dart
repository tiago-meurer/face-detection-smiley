import 'package:face_recognition/face_detection_camera.dart';
import 'package:flutter/material.dart';
import 'package:face_recognition/face_detection_image.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("SmileFace - Face Detection"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("SmileFace from Image"),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FaceDetectionFromImage(),
                  )
                );
              },
            ),
            RaisedButton(
              child: Text("SmileFace to Live Camera"),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FaceDetectionFromLiveCamera(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}