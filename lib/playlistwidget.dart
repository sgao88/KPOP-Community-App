import 'package:flutter/material.dart';

class PlaylistWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 0),
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 4.0),
          child: Column(
              children: [
                Row(
                    children: [
                      Icon(Icons.music_note),
                      Text('Somehow - Day6')
                    ]
                ),
                Row(
                    children: [
                      Icon(Icons.music_note),
                      Text('Side Effects - Stray Kids')
                    ]
                ),
                Row(
                    children: [
                      Icon(Icons.music_note),
                      Text('Promise - ATEEZ')
                    ]
                ),
                Row(
                    children: [
                      Icon(Icons.music_note),
                      Text('Epiphany - Jin')
                    ]
                ),
              ]
          ),
        )
    );
  }
}