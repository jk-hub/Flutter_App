import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String buildNumber = '';
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Theme.of(context).primaryColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: new BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 3.0,
                    ),
                    shape: BoxShape.circle),
                child: Image.asset(
                  "assets/img/reazy_logo.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'V.1.0.' + buildNumber,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
