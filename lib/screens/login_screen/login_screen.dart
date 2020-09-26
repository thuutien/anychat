import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
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
}
