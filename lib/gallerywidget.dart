import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 50,
              child: Image(image: AssetImage('img/circlecropicon.png')),
            ),
            Text(
              'jungkook',
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 50,
              child: Image(image: AssetImage('img/circlecropicon.png')),
            ),
            Text(
              'jungkook again',
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 50,
              child: Image(image: AssetImage('img/circlecropicon.png')),
            ),
            Text(
              'jungkook again again',
            ),
          ],
        )
      ],
    );
  }
}