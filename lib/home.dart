import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  Column _buildButtonColumn( IconData icon, String label, {Color color}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Your Name Here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Member since October 2020',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.amberAccent,
          ),
          Text('Level 41'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
            'The #KPOP App made for everyone! '
            'Get the latest news about your faves, look up information about '
            'different groups, and join the conversation in different forums!',
        softWrap: true,
      ),
    );

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Icons.circle, 'Group 1', color: Color(0xFF2A8EDF)),
          _buildButtonColumn(Icons.circle, 'Group 2', color: Color(0xFF2A8EDF)),
          _buildButtonColumn(Icons.circle, 'Group 3', color: Color(0xFF2A8EDF)),
        ],
      ),
    );

    Widget newsTitle = Container(
      padding: const EdgeInsets.all(14),
      alignment: Alignment.center,
      child: Text(
        'News',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.grey[500],
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    );

    Widget newsScroll = Container(
      padding: const EdgeInsets.all(2),
      alignment: Alignment.center,
      child: Text(
        'This is a link to a current Kpop news article. uwu',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.lightBlueAccent,
          fontWeight: FontWeight.bold,
          fontSize: 10,
          decoration: TextDecoration.underline,

        ),
      ),
    );

    Widget border = Container(
      padding: const EdgeInsets.only(top: 16),
      child: Icon(Icons.linear_scale_outlined),
    );

    Widget idolProfile = Container(
      child: Row(
        children:[
          Container(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'img/00-promo-jungkook.jpg',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              'S.T.O.P. I.T. - Jungkook',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

        ],
      ),
    );

    return MaterialApp(
       home: Scaffold(

         body: ListView(
           children: [

             Image.asset(
               'img/00-promo-jungkook.jpg',
                  width: 600,
                 height: 240,
                 fit: BoxFit.cover,
                 ),
             titleSection,
             buttonSection,
             textSection,
             border,
             newsTitle,
             newsScroll,
             newsScroll,
             newsScroll,
             border,
             idolProfile,
             idolProfile,
             idolProfile,

           ],
        ),

       ),



    );

  }


}
