import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/homescreen.dart';


void main() => runApp(new MaterialApp(
  home: new SplashScreen(),
  routes: <String, WidgetBuilder>{
    '/HomeScreen': (BuildContext context) => new HomeScreen()
  },
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(

        child: new Image.asset('assets/images/splash.png', fit: BoxFit.fill,height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center),
      ),
    );
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }
}

