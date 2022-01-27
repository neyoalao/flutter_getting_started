import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quote_card/Quote.dart';
import 'package:quote_card/quote_card.dart';

void main() {
  runApp(QuoteList());
}

class QuoteList extends StatefulWidget {
  QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote("Yada yada", "big dady"),
    Quote("lorem ipsum ipsum lorem.", "unknown"),
    Quote("how far my fellow country people", "naijarians")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text("Awesome Quotes List"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Flexible(
                child: ListView.builder(
                    itemCount: quotes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return QuoteCard(
                          quote: quotes[index],
                          delete: () => {
                                setState(() => {quotes.remove(quotes[index])})
                              });
                    })),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            setState(() {
              quotes.add(Quote("quote", "author"));
            })
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.green[800],
        ),
      ),
    );
  }
}
