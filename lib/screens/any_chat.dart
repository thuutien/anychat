import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'splash_screen/splash_screen.dart';

class AnyChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColorBrightness: Brightness.dark),
      home: SplashScreen(),
    );
  }
}
