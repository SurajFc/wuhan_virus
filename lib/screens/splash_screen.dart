import 'package:flutter/material.dart';
import 'package:wuhanvirus/constants.dart';
import 'dart:async';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              height: 200,
              width: 200,
              image: AssetImage('assets/corona.png'),
            ),
            SizedBox(height: 10.0),
            Text(
              'WuhanVirus Tracker',
              style: kAppBarTitle,
            )
          ],
        ),
      ),
    );
  }
}
