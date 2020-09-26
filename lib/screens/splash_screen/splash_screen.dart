import 'package:any_chat/screens/chat_screen/chat_screen.dart';
import 'package:any_chat/screens/login_screen/login_screen.dart';
import 'package:any_chat/ult/fade_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp().then((value) => checkLogin(context));
    return Scaffold(
      backgroundColor: Color(0xFF353536),
    );
  }

  void checkLogin(BuildContext context) async {
    if (FirebaseAuth.instance.currentUser == null) {
      Navigator.pushReplacement(context, FadeRoute(page: LoginScreen()));
    } else {
      Navigator.pushReplacement(context, FadeRoute(page: ChatScreen()));
    }
  }
}
