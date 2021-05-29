import 'package:bestarchi/Views/home/homeScreen.dart';
import 'package:bestarchi/Views/login/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter MVC Archi',
      theme: _themeData(),
      home: HomeScreen(),
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/login_screen", page: () => LoginScreen()),
      ],
      initialRoute: "/",
    );
  }

  ThemeData _themeData() {
    return ThemeData(
        appBarTheme:
            AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
        textTheme:
            TextTheme(headline6: BodyTextMainStyle, bodyText1: BodyTextStyle));
  }
}
