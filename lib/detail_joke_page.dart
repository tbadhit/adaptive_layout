import 'package:flutter/material.dart';

import 'joke.dart';

class DetailJokePage extends StatefulWidget {
  final bool cekDeviceLayout;
  final Joke? joke;
  const DetailJokePage(
      {Key? key, required this.cekDeviceLayout, required this.joke})
      : super(key: key);

  @override
  _DetailJokePageState createState() => _DetailJokePageState();
}

class _DetailJokePageState extends State<DetailJokePage> {
  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(widget.joke?.setup ?? 'Joke belum dipilih'),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(widget.joke?.punchline ?? 'tidak ada punchline'),
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.joke?.type ?? 'no selected type'),
        ),
        body: Center(
          child: content,
        ),
        backgroundColor: Colors.orange);
  }
}
