import 'package:adaptive_layout/detail_joke_page.dart';
import 'package:adaptive_layout/list_joke.dart';
import 'package:flutter/material.dart';

import 'joke.dart';

class AdaptivePage extends StatefulWidget {
  const AdaptivePage({Key? key}) : super(key: key);

  @override
  _AdaptivePageState createState() => _AdaptivePageState();
}

class _AdaptivePageState extends State<AdaptivePage> {
  Joke? jokeChoices;

  Widget buildNoTablet() {
    return ListJoke(chooseJokeCallback: (choices) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DetailJokePage(cekDeviceLayout: false, joke: choices);
      }));
    });
  }

  Widget buildTablet() {
    return Row(
      children: [
        Flexible(
            child: Material(
          elevation: 16,
          child: ListJoke(
            chooseJokeCallback: (choices) {
              setState(() {
                jokeChoices = choices;
              });
            },
            jokeChoices: jokeChoices,
          ),
        )),
        Flexible(
            child: DetailJokePage(cekDeviceLayout: true, joke: jokeChoices))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content;

    var screenSize = MediaQuery.of(context).size.shortestSide;
    var screenOrientetion = MediaQuery.of(context).orientation;

    if (screenOrientetion == Orientation.portrait && screenSize < 600) {
      content = buildNoTablet();
    } else {
      content = buildTablet();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Joke App'),
      ),
      backgroundColor: Colors.blueGrey,
      body: content,
    );
  }
}
