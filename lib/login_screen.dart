import 'dart:async';
import 'package:flutter/material.dart';
import 'package:social/Dialogs/dialogs.dart';

class UserLoginForm {
  String email = '';
  String password = '';
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  String _validateEmail(String value) {
    value = value.trim();
    if (value.length == 0) {
      return "Please enter valid email address.";
    } else {
      return null;
    }
  }

  String _validatePassword(String value) {
    if (value.length == 0) {
      return "Please enter valid password.";
    } else if (value.contains(' ')) {
      return "Password should not contain whitespaces.";
    } else {
      return null;
    }
  }

  final GlobalKey<FormState> _loginUserFormKey = new GlobalKey<FormState>();
  UserLoginForm userData = new UserLoginForm();
  bool _autoCorrectCheck = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () {
        SCDialogs.exitDialog(context);
        return Future.value(false);
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: queryData.size.width / 10,
                        right: queryData.size.width / 10,
                        top: queryData.size.height / 8.3,
                        bottom: queryData.size.height / 6),
                    child: Stack(
                      children: <Widget>[
                        Card(
                          elevation: 5.0,
                          margin: EdgeInsets.only(top: 50.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100.0),
                              ),
                            ),
                            padding: EdgeInsets.only(
                              top: 30.0,
                              bottom: 10.0,
                            ),
                            child: Form(
                              key: this._loginUserFormKey,
                              autovalidate: _autoCorrectCheck,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Theme(
                                  data: ThemeData(
                                    primaryColor: Theme.of(context).accentColor,
                                    hintColor: Colors.grey,
                                  ),
                                  child: ListView(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: TextFormField(
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .accentColor),
                                          autocorrect: true,
                                          onEditingComplete: () {},
                                          onFieldSubmitted: (term) {
                                            _fieldFocusChange(context,
                                                _emailFocus, _passwordFocus);
                                          },
                                          decoration: InputDecoration(
                                            filled: true,
                                            labelText: 'Email',
                                            labelStyle:
                                                TextStyle(fontSize: 16.0),
                                            suffixIcon: Icon(
                                              Icons.mail,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          textInputAction: TextInputAction.next,
                                          focusNode: _emailFocus,
                                          onSaved: (value) =>
                                              this.userData.email = value,
                                          validator: this._validateEmail,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: TextFormField(
                                          autocorrect: true,
                                          enableInteractiveSelection: false,
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .accentColor),
                                          initialValue: "",
                                          onEditingComplete: () {},
                                          onFieldSubmitted: (term) {
                                            _passwordFocus.unfocus();
                                            // signinUser();
                                          },
                                          validator: _validatePassword,
                                          decoration: InputDecoration(
                                            filled: true,
                                            labelText: 'Password',
                                            errorMaxLines: 2,
                                            labelStyle:
                                                TextStyle(fontSize: 16.0),
                                            suffixIcon: new GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _obscureText = !_obscureText;
                                                });
                                              },
                                              child: new Icon(
                                                _obscureText
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          keyboardType: TextInputType.text,
                                          textInputAction: TextInputAction.done,
                                          focusNode: _passwordFocus,
                                          onSaved: (value) =>
                                              this.userData.password = value,
                                          obscureText: _obscureText,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(10.0)),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/forgot_email');
                                        },
                                        child: Text(
                                          "Forgot Password?",
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(40, 0, 40, 0),
                                        child: RaisedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, "/home");
                                          },
                                          padding: EdgeInsets.all(
                                            (queryData.size.height / 70.0),
                                          ),
                                          color: Theme.of(context).accentColor,
                                          shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(30.0),
                                          ),
                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontFamily: 'roboto',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(
                                            queryData.size.height / 70.0),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/signup");
                                        },
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "No Account ?",
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                              Text(
                                                " Sign Up",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .accentColor,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
