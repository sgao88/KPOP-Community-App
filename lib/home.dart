import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Color color;

  HomePage(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
      color: color,
      child: ListView(
        // padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.pinkAccent[600],
            alignment: Alignment.center,
            child: Text('Jungshook',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                  letterSpacing: 2.0,
                  fontFamily: 'Indie Flower',
                ),

          ),

          ),
          Container(
            height: 300,
            child: Image(
              image: AssetImage('img/00-promo-jungkook.jpg'),
            ),


          )],
      )
    );


  }
}
