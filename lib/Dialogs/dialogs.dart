import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

enum ExitAction { YES, NO }

class SCDialogs {
  static Future<ExitAction> exitDialog(BuildContext context) {
    return showDialog<ExitAction>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
          title: Center(
            child: Column(
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage(
                      'assets/images/2.png',
                    ),
                    height: 85.0,
                    width: 85.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Text(
                    'Are you sure you want to exit?',
                    style: TextStyle(
                      fontFamily: 'SquadaOne',
                      fontWeight: FontWeight.normal,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: RaisedButton(
                        onPressed: () {
                          exit(0);
                        },
                        padding: EdgeInsets.only(right: 15, left: 15),
                        color: Theme.of(context).primaryColor,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          "YES",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'roboto',
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop(ExitAction.NO);
                        },
                        color: Colors.red,
                        padding: EdgeInsets.only(right: 25, left: 25),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          "NO",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'roboto',
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
