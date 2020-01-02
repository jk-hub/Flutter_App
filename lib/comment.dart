import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget postDescription() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Event Description',
            // style: hostEventStyling,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextFormField(
          onFieldSubmitted: (term) {
            // _hostEventDescriptionFocusNode.unfocus();
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: new EdgeInsets.only(
              left: MediaQuery.of(context).size.height / 50.0,
              bottom: 150.0,
              right: 10.0,
            ),
          ),
          maxLines: null,
          // validator: validateHostEventDescription,
          keyboardType: TextInputType.text,
          // focusNode: _hostEventDescriptionFocusNode,
        ),
      ],
    );
  }

 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Disqus System',
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              'assets/images/nikhil.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              width: double.infinity,
                              child: ListTile(
                                title: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      'Matt',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      'Today at 5:42PM',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'How artistic!',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'Reply',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/nikhil.png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              width: double.infinity,
                              child: ListTile(
                                title: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      'Elliot Fu',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      'Yesterday at 12:30AM',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'How artistic!',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'Reply',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left:
                                  BorderSide(color: Color(0xFF979797), width: 2),
                            ),
                          ),
                          child: SizedBox(
                            height: 150.0,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset(
                          'assets/images/nikhil.png',
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        width: double.infinity,
                        child: ListTile(
                          title: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Elliot Fu',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Yesterday at 12:30AM',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'How artistic!',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Reply',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/nikhil.png',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: double.infinity,
                          child: ListTile(
                            title: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Elliot Fu',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'Yesterday at 12:30AM',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'How artistic!',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Reply',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                postDescription(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
