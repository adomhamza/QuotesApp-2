import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
