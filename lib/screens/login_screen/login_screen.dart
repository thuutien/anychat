import 'package:any_chat/screens/chat_screen/chat_screen.dart';
import 'package:any_chat/services/auth_service.dart';
import 'package:any_chat/ult/fade_route.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //bool isLoading = false;

    return Scaffold(
      backgroundColor: Color(0xFF353536),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'AnyChat',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff2CA1C0)),
            ),
            SizedBox(
              height: 200,
            ),
            RaisedButton(
              color: Color(0xff2991A2),
              shape: StadiumBorder(),
              onPressed: () => handleLogin(context),
              child: Container(
                child: Center(
                  child: Text(
                    "Login with Google",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                width: 180,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handleLogin(BuildContext context) {
    AuthService.instance.singInWithGoogle().then((user) {
      if (user != null) {
        Navigator.pushReplacement(context, FadeRoute(page: ChatScreen()));
      } else {
        print("cannot login");
      }
    }).catchError((e) {
      print(e);
    });
  }
}
