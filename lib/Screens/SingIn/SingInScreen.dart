import 'package:flutter/material.dart';
import 'package:flutterbaseshop/Screens/SingIn/Components/BodySingIn.dart';

class SingInScreen extends StatelessWidget {
  static String RoutName="/SingIn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SingIn',
        style: TextStyle(color: Colors.black),),
      ),
      body:BodySingIn(),
    );
  }
}
