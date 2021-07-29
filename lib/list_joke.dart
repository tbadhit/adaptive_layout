import 'package:flutter/material.dart';

import 'joke.dart';

class ListJoke extends StatefulWidget {
  final Joke? jokeChoices;
  final ValueChanged<Joke> chooseJokeCallback;

  const ListJoke({Key? key, this.jokeChoices, required this.chooseJokeCallback})
      : super(key: key);

  @override
  _ListJokeState createState() => _ListJokeState();
}

class _ListJokeState extends State<ListJoke> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: jokesList.map((jokes) {
        return Container(
          child: ListTile(
            title: Text(
              jokes.setup,
              style: TextStyle(color: Colors.black),
            ),
            onTap: () => widget.chooseJokeCallback(jokes),
            selected: widget.jokeChoices == jokes,
          ),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        );
      }).toList(),
    );
  }
}
