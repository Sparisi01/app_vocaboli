import 'package:flutter/material.dart';

class WordClass extends StatelessWidget {
  const WordClass({Key? key, required this.word, required this.traduction})
      : super(key: key);

  final String word;
  final String traduction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 2,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.5,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FractionallySizedBox(
                    widthFactor: 0.8,
                    child: Text(
                      word,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    )),
                const FractionallySizedBox(
                  widthFactor: 0.8,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Traduzione',
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
