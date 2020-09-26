import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/any_chat.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
  ));
  runApp(AnyChat());
}
