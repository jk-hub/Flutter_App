import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentScreen extends StatefulWidget {
  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  bool liked = false;

  pressed() {
    setState(() {
      liked = !liked;
    });
  }

  Widget commentBox() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: new EdgeInsets.only(
              left: MediaQuery.of(context).size.height / 50.0,
              bottom: 150.0,
              right: 10.0,
            ),
          ),
          maxLines: null,
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                          child: Container(
                            child: Image.asset(
                              'assets/images/1.png',
                              width: 60,
                              height: 60,
                            ),
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
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        child: new IconButton(
                                          onPressed: () {
                                            pressed();
                                          },
                                          icon: Icon(
                                            liked
                                                ? Icons.favorite
                                                : FontAwesomeIcons.heart,
                                            color: liked
                                                ? Colors.red
                                                : Colors.grey,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          commentBox();
                                        },
                                        child: Container(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            'Reply',
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                          'assets/images/2.png',
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
                                      'This has been very useful for my research. Thanks as well!',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        child: new IconButton(
                                          onPressed: () {
                                            pressed();
                                          },
                                          icon: Icon(
                                            liked
                                                ? Icons.favorite
                                                : FontAwesomeIcons.heart,
                                            color: liked
                                                ? Colors.red
                                                : Colors.grey,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          commentBox();
                                        },
                                        child: Container(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            'Reply',
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                        'assets/images/1.png',
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
                              'Jenny Hess',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Just now',
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
                                'Elliot you are always so right :)',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: new IconButton(
                                    onPressed: () {
                                      pressed();
                                    },
                                    icon: Icon(
                                      liked
                                          ? Icons.favorite
                                          : FontAwesomeIcons.heart,
                                      color: liked ? Colors.red : Colors.grey,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    commentBox();
                                  },
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Reply',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                      'assets/images/3.png',
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
                                'Joe Henderson',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '5 days ago',
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
                                  'Dude, this is awesome.Thanks so much',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: new IconButton(
                                      onPressed: () {
                                        pressed();
                                      },
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : FontAwesomeIcons.heart,
                                        color: liked ? Colors.red : Colors.grey,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      commentBox();
                                    },
                                    child: Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'Reply',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              commentBox(),
              Container(
                width: 150.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.edit,
                        ),
                      ),
                      Container(
                        child: Text('Add Reply'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
