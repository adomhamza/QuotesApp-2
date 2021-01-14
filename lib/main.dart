import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuotesCard(),
    ));

class QuotesCard extends StatefulWidget {
  @override
  _QuotesCardState createState() => _QuotesCardState();
}

class _QuotesCardState extends State<QuotesCard> {
  List<Quote> quotes = [
    Quote(
        text: "If you tell the truth, you don't have to remember anything.",
        author: 'Mark Twain'),
    Quote(text: 'So many books, so little time.', author: 'Frank Zappa'),
    Quote(
        text:
            "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
        author: 'Albert Einstein'),
  ];

  Widget quoteTemplate(quote) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quote'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: quotes.map((e) => quoteTemplate(e)).toList(),
      ),
    );
  }
}
