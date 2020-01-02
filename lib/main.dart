import 'package:flutter/material.dart';
import 'package:social/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Social media",
      initialRoute: '/',
      onGenerateRoute: routing,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        errorColor: Colors.red,
      ),
      home: SplashScreen(),
    );
  }

  Route routing(settings) {
    switch (settings.name) {
      case '/guidelines':
        // return PageTransition(
        // child: IntroScreen(), type: PageTransitionType.rightToLeftWithFade);
        break;
      default:
        return null;
    }
  }
}
