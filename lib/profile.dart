import 'package:flutter/material.dart';
import 'gallerywidget.dart';
import 'playlistwidget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 125,
                  child: Image(image: AssetImage('img/circlecropicon.png')),
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'User Name',
                      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                    ),
                    Text(
                      'Edit Profile',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                        )
                    )
                  ],
                ),
                Spacer(flex: 2),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 0),
                    child: Text(
                      'About',
                      style: TextStyle(
                        backgroundColor: Color(0xFFB8D9F4),
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                      )
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Text('Here is a fancy, nice, autobiography without too much information '
                    'because the internet is dangerous. Don''t doxx yourselves, kids!',
                    style: TextStyle(fontSize: 15)),
              )
            ],
          ),
          // ProfileSlideWidget(),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 4.0),
                child: Text(
                    'Idol Gallery',
                    style: TextStyle(
                      backgroundColor: Color(0xFFB8D9F4),
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    )
                ),
              ),
            ),
            GalleryWidget(),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 4.0),
                child: Text(
                    'Playlist',
                    style: TextStyle(
                      backgroundColor: Color(0xFFB8D9F4),
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    )
                ),
              ),
            ),
            PlaylistWidget(),
        ],
      )
    );
  }
}

//broken buttons :'(
class ProfileSlideWidget extends StatefulWidget {
  ProfileSlideWidget({Key key}) : super(key: key);
  @override
  _ProfileSlideWidgetState createState() => _ProfileSlideWidgetState();
}

class _ProfileSlideWidgetState extends State<ProfileSlideWidget> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    GalleryWidget(),
    PlaylistWidget(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _children[_currentIndex],
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_left),
                onPressed: () {
                  setState(() {
                    if (_currentIndex == 1) {
                      _currentIndex = 0;
                    } else {
                      _currentIndex = 1;
                    }
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  setState(() {
                    if (_currentIndex == 1) {
                      _currentIndex = 0;
                    } else {
                      _currentIndex = 1;
                    }
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}