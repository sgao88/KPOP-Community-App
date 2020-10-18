import 'package:flutter/material.dart';
import 'package:faker/faker.dart';


class ForumPage extends StatelessWidget {
  final Color color;

  ForumPage(this.color);

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
            _suggestions.addAll(faker.lorem.sentences(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }



}
