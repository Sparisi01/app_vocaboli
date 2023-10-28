import 'dart:math';

import 'package:applicazione_vocaboli/word_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var index = 0;

  final words = [
    {"rubbit", "coniglio"},
    {"pencil", "penna"},
    {"hello", "ciao"}
  ];

  getNewIndex() {
    setState(() {
      index = Random().nextInt(words.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          getNewIndex();
        },
      ),
      body: Center(
        child: WordClass(
            word: words[index].elementAt(0),
            traduction: words[index].elementAt(1)),
      ),
    );
  }
}
