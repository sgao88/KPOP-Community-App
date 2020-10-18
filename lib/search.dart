import 'package:flutter/material.dart';

// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class SearchPage extends StatelessWidget {
  Color mainColor = Color(0xFF2A8EDF);
  Color background = Color(0xFFFFFFF2);
  Color headerColor = Color(0xFF2B2D42);

  SearchPage(mainColor);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[ 
          Row(
            children: <Widget>[
              Container(
                child: Container(
                  color: background,
                  width: 375,
                  height: 38,
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                  child: new Text("Enter an artist...", 
                    style: TextStyle(color: mainColor)),
                )
              ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                  color: background,
                  child: Container(
                    color: Colors.grey[100],
                    width: 375,
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0),
                    child: new Text("Trending", 
                      style: TextStyle(color: mainColor,
                        fontWeight: FontWeight.bold)),
                  )
                ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                  color: mainColor,
                  child: Container(
                    color: Colors.grey[100],
                    width: 375,
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0),
                    child: new Text("1. BLACKPINK", 
                      style: TextStyle(color: mainColor)),
                  )
                ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                  color: mainColor,
                  child: Container(
                    color: Colors.grey[100],
                    width: 375,
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0),
                    child: new Text("2. BTS", 
                      style: TextStyle(color: mainColor)),
                  )
                ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                  color: mainColor,
                  child: Container(
                    color: Colors.grey[100],
                    width: 375,
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0),
                    child: new Text("3. SHINEE", 
                      style: TextStyle(color: mainColor)),
                  )
                ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                  color: mainColor,
                  child: Container(
                    color: Colors.grey[100],
                    width: 375,
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0),
                    child: new Text("4. THE BOYZ", 
                      style: TextStyle(color: mainColor)),
                  )
                ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                  color: mainColor,
                  child: Container(
                    color: Colors.grey[100],
                    width: 375,
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0),
                    child: new Text("5. Stray Kids", 
                      style: TextStyle(color: mainColor)),
                  )
                ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                  color: mainColor,
                  child: Container(
                    color: Colors.grey[100],
                    width: 375,
                    height: 49,
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0),
                    child: new Text("Your Recent Searches",
                      style: TextStyle(color: mainColor, 
                        fontWeight: FontWeight.bold)),
                  )
                ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                  color: mainColor,
                  child: Container(
                    color: Colors.grey[100],
                    width: 375,
                    height: 49,
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0),
                    child: new Text("Jungkook", 
                      style: TextStyle(color: mainColor)),
                  )
                ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                  color: mainColor,
                  child: Container(
                    color: Colors.grey[100],
                    width: 375,
                    height: 49,
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0),
                    child: new Text("Rosé", 
                      style: TextStyle(color: mainColor)),
                  )
                ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                  color: mainColor,
                  child: Container(
                    color: Colors.grey[100],
                    width: 375,
                    height: 49,
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 0),
                    child: new Text("THE BOYZ", 
                      style: TextStyle(color: mainColor)),
                  )
                ),
            ]
          ),
        ]
      );
  }
}
