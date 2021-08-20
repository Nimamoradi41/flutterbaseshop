import 'package:flutter/material.dart';
import 'Screens/SplashScreen/Components/SplashScreen.dart';
import 'package:flutterbaseshop/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ramp',
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black)
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor)
        ),
        primarySwatch: Colors.blue,
      ),
      home:SplashScreen(),
    );
  }
}

