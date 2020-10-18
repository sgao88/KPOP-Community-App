import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:hello_world/main.dart';


class ForumPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomSentence(),
    );
  }
}

class RandomSentence extends StatefulWidget {
  @override
  _RandomSentenceState createState() => _RandomSentenceState();
}

class _RandomSentenceState extends State<RandomSentence> {

  final _suggestions = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: _buildSuggestions(),
    );
  }

  Widget _buildRow(String sentence) {
    return ListTile(
      title: Text(sentence)
    );
  }

  Widget _buildSuggestions() {


    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return Divider();
          }

          final index = i ~/ 2;
          if (index >= -1) {
            String fakeMonth = faker.date.month();
            String fakeYear = faker.date.year(minYear: 2017, maxYear: 2021);
            String fakeSentence = faker.lorem.sentence();
            _suggestions.add(fakeMonth + " " + fakeYear + ": " + fakeSentence);
          }
          return _buildRow(_suggestions[index]);
        });
  }



}
