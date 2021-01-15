import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 2.0,
                height: 2.0,
              ),
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                height: 2.0,
                letterSpacing: 1.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
