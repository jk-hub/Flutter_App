import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social/SplashScreen.dart';
import 'package:social/comment.dart';
import 'package:social/home_screen_body.dart';
import 'package:social/login_screen.dart';

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
      title: "Disqus System",
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
      case '/login':
        return PageTransition(
        child: LoginScreen(), type: PageTransitionType.rightToLeftWithFade);
        break;
      case '/home':
        return PageTransition(
        child: InstaHome(), type: PageTransitionType.rightToLeftWithFade);
        break;
        case '/comment':
        return PageTransition(
        child: CommentScreen(), type: PageTransitionType.rightToLeftWithFade);
        break;
      default:
        return null;
    }
  }
}
