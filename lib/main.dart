import 'package:adaptive_layout/adaptive_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 1. Create 4 file
// 2. add Stf widget in each of file (except joke.dart)
// 3. add code in each of file, start from adaptive_page.dart
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AdaptivePage());
  }
}
