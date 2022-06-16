import 'package:flutter/material.dart';
import 'package:webview/page1.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget splash = SplashScreenView(
      navigateRoute: webview(),
      duration: 5000,
      imageSize: 90,
   
    
      textType: TextType.ColorizeAnimationText,
      // ignore: prefer_const_constructors
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.blue[900],
    );

    return MaterialApp(
   
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splash,
    );
  }
}
